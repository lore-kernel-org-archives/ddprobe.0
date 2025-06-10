Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171C125D53B
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749527994; cv=none; b=dMbRZjp6JPtN8kVoamWF8HB25zxiqIgmKahk8Q+No4JJzEmI0IoedoM1HFdzVtIFZ37yDnxOB2kz64fFwDK85q8gH5EpE0jOJCe/m4ZdY/iN96vOC8CYLP/eE0BDjyxeEmtzvhayzfajOtN4xryObmVdFz1QevvgIkA4WFf92ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749527994; c=relaxed/simple;
	bh=RGntyo9I7A94lGI3Z99RrqIIvb/id2RNxTLiADmUbbc=;
	h=To:Subject:From:Message-Id:Date; b=NbbmJUQh30nvIhPKPqjUVeSnT3O2GP6LpfdCmawv3W80XK587GanS9cP5EYuKHSHsfY50H5cuaXUMo1sGlOZw4Q9RvnL+Q+IpZcEY2z/Jhg6a76Csz5N2jAWkGKLe2hX4wj//1X+rpnXnA2V7lFgxPzuQy/EfPrxj42naYISKFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwC9gJcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwC9gJcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86D6C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749527993;
	bh=RGntyo9I7A94lGI3Z99RrqIIvb/id2RNxTLiADmUbbc=;
	h=To:Subject:From:Date:From;
	b=MwC9gJczLr7M62MW4I6mVvYAUEn4LBTC+Vezi4OBiWpOdrrYSaTuV0oNIm6uxVtbJ
	 2URMJ3PprpAcQFQGu1YCGIXKQ6tWYhsMlBIBZNH9Cke2j+KYI+batIx+bOgbStzA/8
	 F+6V0V5dt+Yy+p1rdZ+SX5tA8zaz/JWsvaoVguC4cThvSMFXzqaW8oqkE38jXx3dxu
	 NiMshew99xCnZKH2CjWrVQNdUKC7z5f7uzpQ7jXZpw45p4huElz4vgpk9U50xr+HTB
	 Pz24mM14u+GxxZTmtDdmbmGkGTy6nuj5l05ZIctguiDX7GkJEcB7omzH5JElfyRqQd
	 +eFonh/CgBCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B7FC5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952799357.4316.9111599551966294028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc72b9efad1cfe5b29f072c5451eddff339e4e7928603d709bc200949a922cf
Date: Tue, 10 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749527993
