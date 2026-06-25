Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330A424CEEA
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782371254; cv=none; b=cSaPyJ2hu7FsYS63+abKcJVjH59yWFFBXsI4/qrxlKpTvdnVm/V5bStq8R5q/Rusa6Sdw04ZNaHfDxKPpcWK/0HLCzNW243SWcwEJRG5N2ng9ETmM+C1zk3cymy8WbLiL+N00XwYWbSgakm1VmmBE3i9cA0Xi9Va/+0N29h/rNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782371254; c=relaxed/simple;
	bh=+TWk8R7OJg/w2KMmluw3x1O9YZAnK97JwiJY7HF8G+s=;
	h=To:Subject:From:Message-Id:Date; b=qKBeICpLbxJe5yS8kUp6R93LIEF42IPoZEJN1TPlfkANykjnm1UO7rvzDdhvZF6tZjc696vNp9ug2BzRf1eWNXZxYW6fuCu6ifYC+2XZ+yxeerz2VaroM/c/4X3mz7Nnrb6Ih/MVasOhmaO+MK5R1U+Th6HR88iy/B842W30HnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtOseFuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtOseFuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEED9C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782371253;
	bh=+TWk8R7OJg/w2KMmluw3x1O9YZAnK97JwiJY7HF8G+s=;
	h=To:Subject:From:Date:From;
	b=TtOseFuGHJOEQ3Vf0yoTIm0ZcboFlcj6K9Ui7ZD3VH8zFnr110LKtoQD+d0IFDUK3
	 ycThMX3o4vRK3BUbJoHveqEiYYU6tsa0KrfwzwlRY7ULWwykhre5Caom6QS3/3DXRo
	 LfEaI6fjiUe0w1y+lOzFjJCtolt8DjCnAMbidvLyxJ8kqs/Mjbv5wgbLMyRzU799ni
	 3Wo5/hDiP1CKXuwM98IqEo0MJ0m4tpsA6xzTemopBUhNipFZ4gfDZeUb3s2G2LKJQ3
	 LB9PxCPHOJCRn7pyUC3/yXOhXP1lmIoUdah8F6HTZRqDZ7y0rJuYAEttBvIhDKLT32
	 7gSdbFPsWwtaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5505CDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237125370.14424.13305686553986253593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd07ae3a51384d96ad865ba37d252633194f2ed4264a294010f45a2ec42a01f4
Date: Thu, 25 Jun 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782371253
