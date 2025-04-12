Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4686D19C558
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744492794; cv=none; b=d+xhUOnQWB5bxLKq8B4cuM7Lhh4S/afqKaLcubk7CuOGRCvOnI+FkTub3AhFFgB+9BBoHyuGHxiAoofoQwJw2x9DEGrVvc71AAHqCebUwOsC6S9Jd5OLUu1FzQ80c/Ln5LXNZqFH4Ph/Hha50UM+0vOqGbRqtcU6YBzmEF2x95Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744492794; c=relaxed/simple;
	bh=/cLH7qkybl1N5HQFZt0kvI4iSX8RyyHPIMm+8/EIPSI=;
	h=To:Subject:From:Message-Id:Date; b=OPrduOH4PY5pWFBjMU+jgR2M+rZhld7Dr7i0gt4CeEMldhV1C7TBVcb076qJi/pAq2Sp5rdE63bxGGl4VF3fln8XTVN+3msU80pIjXGn27bQp15iuF0/Np2xkZYg6Cn299m3bmORgXpQ70MyuyaXjz/389ef+dzSqa2IASWnMWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aj3k+sW/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aj3k+sW/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4711C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744492793;
	bh=/cLH7qkybl1N5HQFZt0kvI4iSX8RyyHPIMm+8/EIPSI=;
	h=To:Subject:From:Date:From;
	b=aj3k+sW/5dxOyxBSBrKyGlbhbyu7lJ+m9cUzJbJvOcFu6a77OWQoLWU0xIe7t+eCB
	 y6ElF6QP2qS/zANdAt6N50bPramJzrJ35PGRH10oMKlaeq+Sb+q4j5bxlL9hcRtuFx
	 biZIcA/y8KohHAudeFJu8WddSByfrIZKFQVMnylS3kwxLHpGZ4KjyhPm/hxjvcs96h
	 LfAQCvCyF2OA7GDuep0jkP0Dr/kSluW1IgoI7Gyeb3hOEubC6ms4U9tonU5lIb+/Dt
	 9+AYzHNJHk/8JxjsVVmQxYc8z8nm20XyoDQXTGbjyUEy0ai+9F8BBLAY2zZGZCR4H8
	 nYCFx/veVZt6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C39AC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449279360.26812.2238251004968135292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b941fdaf65d967093ae39a413f17ce8a0c320e839d1905e42a7784c2610f2959
Date: Sat, 12 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744492793
