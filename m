Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494A1492E48
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789992634; cv=none; b=Nv0KtaCwq6hvZ6gIy+rMu5LvQBVFp0ZV/VNMVpJTvpAH7lIpN5wQcMI18RIIhWZXx+/+ZbU6m1eyTlyKuPBtwRzRzf9CfOfUwqv9QjXDVDTaHJLAh7hEDI/nmEl6CNnA9O9A4zH8bluofK8ysUjaFvzjX8yzLYFppmkJS+Iu/rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789992634; c=relaxed/simple;
	bh=5Mwk3QwbDDkAEiiTUcJ30tMRLVXnqYjmfl3Vi+QsSL8=;
	h=To:Subject:From:Message-Id:Date; b=b0B+vISemBY9KayiSjOKvtSc/AhV+ztZc8KpEOmgTLoRfCKRAErOLATjIQVe9SYaBRhzgeOjVxnd3LQRoyIM5hSkMwZ5LlSmQtAOgx5bgZgFoTD/BYhUCvHaIbwVpzwuLdO6iMX9k6Z/ftGX8y7Dxp2Dew+JQfRdcCMpdTXMUdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGOLoNhE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGOLoNhE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE95CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789992633;
	bh=5Mwk3QwbDDkAEiiTUcJ30tMRLVXnqYjmfl3Vi+QsSL8=;
	h=To:Subject:From:Date:From;
	b=DGOLoNhE2MxukTJkIvYnXGFVMFzuS/55FNJzgmOy9CgdzxkGdHkKFXxB6hg7jZd8q
	 ArqEUEfK3an6Y1pQuIX81U9PkuC9HU8FsAnEMREsV1jRx5HN88EOhlIHr6lqATxxYb
	 DNFUxy7YWQej1SrUZvv3VM19KsfdiF1c+x3N5hQhnUpym4ULlEa76Ab/f+5JDASeyz
	 qOnwVCiVtwWCDsXfdPpsRDcrYT7SYo1pSNk7dPIN56Lh/UrkcGuwZFiy5s/MN/gMS3
	 Fk8RDusOB1YvxF+ztHjs9OAPr+UgPULOHlpum5p67ysC3+h2Em/JYEKMYzJvIH/EX2
	 Cq041O1+XHGRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2A5C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999263369.30754.18297276415434999500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09017a665bc604122cc4f002526095c8d16203d1f372faa16820cfcb9d57270f
Date: Mon, 21 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789992633
