Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE5B19CC36
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748027996; cv=none; b=OBh2bh10PswqvCzd5yOE+6Y7Kgj3KbsmOyTDuF+KqgjtHqmgZp8iAjhT1qr9jua/KYSUdnSiMp1zES+OV92PKoeoRPtaVZiFZPXdTNGV+46P2aVm69XSy6a+zknTuvPSeE7h12GPYONgCo8m8V5fGFdZyKaBBsk9FAXCH2MHrLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748027996; c=relaxed/simple;
	bh=kC5PBusLy6QNFXfvejxAwauDPDUepjx8g0axp6eDVPQ=;
	h=To:Subject:From:Message-Id:Date; b=bIWKa9H8Kao6p2M7V+J405WY0Uu7yiy9Frry4HqxNyXGdzSYC5RjosdjOAzWewAby4EqV1/mvJj0CCSLhoJUWrQqjLXXR+xCldzPG5DMz0/cXaXgJNTNOLRNHg3MQ3Sha+/Fp9nDQNrUBeSTv8zc0antE/9TvYLnyX4xK1EN/cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPOmfaG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPOmfaG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C06C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748027993;
	bh=kC5PBusLy6QNFXfvejxAwauDPDUepjx8g0axp6eDVPQ=;
	h=To:Subject:From:Date:From;
	b=rPOmfaG74ZTv/ZZFAgzUvgowzofIotF4JQcHSJ/Ld6OPGI/HJkU90zjeH1kmfxuaP
	 IDsqtyWoa7jYJvQXqukMUJGeXZYO00G4URJHwv5shQwPwMIlTl4Jq2lGLyhPJ9dKyr
	 pxRoDoaSkkASZXT8i9iYeEdl6u4cya+hxYDYDqBnLbp4gQmhexroVI3s/IwT1V2hCI
	 aU29SXz30ZftN7Va03rx9+Nzo8uMP9A/IZTGzjoeQMsEziVIRWm0Zy8OeDoLPInuT2
	 VO9TAiVlp/PNva6Cp1+8D5AaCAcpk5sJyiQfziWJSHfCXPXOK2+P/lJEJk3gqRS60T
	 CXMBT0OfU9Hhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156FC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802799358.17179.16952433080201811205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecc6a96843967ff96cfd6a2464d538f4c3bd5af01d0e9938e3d5b2433136c5e
Date: Fri, 23 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748027993
