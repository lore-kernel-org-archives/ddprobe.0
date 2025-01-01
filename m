Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5167EDF49
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735772754; cv=none; b=RyBQ7Bo+QwLCw+3JDnQmrGixJHmFtXDRvFnMWdqjS/+/6ATanDV2Rrs8ZZBgl6tPmF+HiO9dUlfhoiGFPzzqIPrqZFx/uKYO9vjVRofHhYwyT/FfkwLOSBSmXYeK66PMdAFD4DNoaQ1kS6KVdXQESapX6iThAikWbiZ1OV2jyh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735772754; c=relaxed/simple;
	bh=P2Zn2hwHYyLmovxwj7gkVHoV6VjKLzN/CwTlj2pE+0k=;
	h=To:Subject:From:Message-Id:Date; b=cU95CWl4Aa+SWii1OYusb9MrLO7Vs3JIymQNw1LxV61HtGBkeOAHHGoEyf7bovYRwq5qbpHpUGgplPWb/L9j9Ueovq7zj30wzJLOnxmYJYKAtRiPgIMb3T/DR0uxgSPiTCV4nkQ015t6DKfWu1sokZ9r53roG6NqNcVTXOsLqHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWTDy2I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWTDy2I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B840FC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735772753;
	bh=P2Zn2hwHYyLmovxwj7gkVHoV6VjKLzN/CwTlj2pE+0k=;
	h=To:Subject:From:Date:From;
	b=LWTDy2I+RPmcEb40NBa4t5/fiZEdKJU0HBqLBeNW3W8vuA31paw+9lYkopumDwRV8
	 l8U/9Aw0JFvZ6Pe0Sj0f6ect013XJmCTISiH/nZ7bzTIHyx/nnD7Qq+0hNGmVrp2WX
	 vhzgqRUwAwIzUAt09Sm5VGNm6sgn92qBl9QR2sN5tMbmbmvtxH5ukFThUKt4Nda2Id
	 y+TyEtJr70JRSvYfu5HrqTCoTxrTRAFt6TZUHGahSMZI1/+Aji5uIxSxsCo7uXARK5
	 F3p0EHPLul8UHsYQk9NPkoQGimRondcIfhFb9msGNmNI7YpZ4AaT0HuWzhV07kQDVo
	 lEPuEmysTVY4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E18BE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173577275362.1975.148970721049657973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abbeeab70156e6d5fd212f4047d54612c4383866b017d008ca3604508a15cb7
Date: Wed, 01 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735772753
