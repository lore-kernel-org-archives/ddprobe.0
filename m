Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2CC19A841
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 12:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721132123; cv=none; b=ZQgGzSe0jM5PyGqBozmcAvj703KFVjkRNLSWVzD+v+cCjkAnrxvFmTC07HvZNg2Bw1jMbAjAUdAseIgOeDsIvO/HDMiyY62IYwB8Ry4+Hw0Luh7fMvLy5zHv5kIKfXL8UY+wae6SD/UAz3N1rTb8eB+cy346rBjzkCkDh+biUMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721132123; c=relaxed/simple;
	bh=vXC+/69iQBJL6fUsfqXNQw9DvIIpl/92sqTyVM958ek=;
	h=To:Subject:From:Message-Id:Date; b=k3uKJOHTeIlX8wSRBa8bnbLfEALWPoYlEY+ODP319SNiJdnfiDCqPW1jk/hz1//ww5vzjxuGZIu85AOeVe913EC0BHXeYCYAg51GXEyUglWh5ETpoCeSmTM5eY87CoV2ZomyETrFBVdp+YsrK4HfezU6Bj6hGEVu/7V0RFjOCG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlvNhGVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlvNhGVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3CB9C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721132123;
	bh=vXC+/69iQBJL6fUsfqXNQw9DvIIpl/92sqTyVM958ek=;
	h=To:Subject:From:Date:From;
	b=WlvNhGVn1+Nge0WBZcsBS/GIr/+D5+BDYOb0Rmzyk5iclvwRAfaWU5m8jR12mMSCu
	 LGtIBBSAp3BRs4poQcERxxOjpGRsLwjK+abYnJ06bIW0KM/0dqckmM54kFsbqfUU4b
	 hlZ9F4+iV4+D16Rs3a1iW+o1vafVuWV8x1rxIUULvZmBNX0dR7vcXkyMdNd1DBlz+i
	 qm/cJCPX7crpKYZdsUUkeihq/r6+vsldOiHn4ZuAdhCOYagd5BBRlW1m0zTjFiqees
	 DFUs+I0yyuPjm0sK6p2j7V7KUNDFMIvv+BtzhMKKfuBJNHU77NqkuyJtr3rYIotYFA
	 M11vifJuurt8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7F1CC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 12:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172113212287.9007.15894875298951351441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876aff7ca664942191e5378e8ad4282798f8d5635ce36cd072678f06aea3aaf3
Date: Tue, 16 Jul 2024 12:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721132122
