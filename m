Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1604F4035C5
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774364694; cv=none; b=rR4HXwUc15VTWgotZ60yFPqRx5QPISJb+NZ2/ncIus7KIQcNqDranCaYep3J2UJD1zDpp8vI6M83QV5+gJbswiF/gLbfCG6/hjHT/rGhb6DbFL+M0HGxox91sfOnj0zPZpdKqmphcEitiha4cCOXNmj24iqbD/rxqPIxvoCvC9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774364694; c=relaxed/simple;
	bh=dv3Y4zH2BpYbCVMYGMuZEc6+X1o4pZh0sQojZ1tV1mA=;
	h=To:Subject:From:Message-Id:Date; b=IIpewG74d9Nz/VgvCQEALhjDn9/zqvdAbVCR4/zAFop3sZhAlWoewS3L6vkev2rPWhDbQFkxyvHxeDe6v18daFvUB+kc788RZyOHbgTsWhkU2yKCaPTVpgUupD2DyxGrXmHGhKhYCpyDMB8R7YYyxgGiYCiNEQ5123U0QuIpP54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAyWLeJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAyWLeJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48A9C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774364693;
	bh=dv3Y4zH2BpYbCVMYGMuZEc6+X1o4pZh0sQojZ1tV1mA=;
	h=To:Subject:From:Date:From;
	b=OAyWLeJR+tyFd3Xyj2B6QOkbZ53T00vVnEyUCmh+1VN96f9DGR/BQjiTbCOGMy3jQ
	 qR6qDL+mR5U4+QiMiapRPSAtxHcAprhsWQ9lJJH50yTgCifVtofDJCIcnGwHhT5f3m
	 SAdFXb3n8hm2IZot9qVGlln5zM/pEfhE0rGzGvjWIJWUpDLBej1gJQ75udNAwZCGKk
	 ov63KV8xWeXA8paPQPjuFL55fFnE6vp/8eDYesH0y1/VkT0fEaiamGVV5HoBogRmXZ
	 jq9sPL+afFkNuU2/I8p0E8bwYdR8b8e/GcuPGQe1rpA8+w/QXhaAHKV14hVrfemL0U
	 BBo0CtozJi+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4267F54AC7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436469365.29666.10234994786925242019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbeab139c9223750e4888ac81f185e5d0aedd401cc16eaf8180ff01170b553de
Date: Tue, 24 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774364693
