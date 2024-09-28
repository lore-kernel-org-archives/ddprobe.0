Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A6A23A6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727497554; cv=none; b=Ny536/861IE6PrX2qFaHGQ3msGBQ8PoMKlbn4WD+yvE/N0+nCJSqW/22DTfheXZ1r5izbAcqY2rwHUHzopAuEQ9O84m51Stg+ezWDGoZzQdQz6ZUB/DTp2YtGSyszyZmhwb5jSbLrn2fyD6jHtRTMa1CO1WNYumcoW6/ucMfT60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727497554; c=relaxed/simple;
	bh=TsbgzEe97tn2+EpsurY6eaOZDAkIiWogfCv2/gDAXGs=;
	h=To:Subject:From:Message-Id:Date; b=uYBWF8oVno8Hf0GmJNPrBAfz3oY8raPvA/aaTrgZG7UqoXSks75FRAwMoOVTQLO9+wWI9XFtgcEhZBEwOUnHPr1CgeTy8vfa/OUgkvc6t1IvjUCfHUpHNr03qbMFz8Fnd0997WMiGmXe8tA+sgme3IzYumytCBXM+hvyHRImhzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vlg98nzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vlg98nzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1785C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727497553;
	bh=TsbgzEe97tn2+EpsurY6eaOZDAkIiWogfCv2/gDAXGs=;
	h=To:Subject:From:Date:From;
	b=Vlg98nzWPMRQmBNNMXPOQSHoXbuSuPOcFHmjrpnQdsKBCS7gmUhMi4/NoCHJ88rCg
	 pHOcgEl8GnibSLaRhE6GQ5RMpASK++HwTUPYuGlG7s1i+iPCnqTiygFlbaqjAyIOUx
	 CLih8DVRIozE3JRpsmwjwJtlGJacASoJeYSe+VfUMSPuGpJwSqwJL2gvrK7IqInY2+
	 /0dgjMCnI205bMybwzstVSMcDUV3kgbefFaq77vcuVCJMrgx+7JLr5HV+2RQwTmwBv
	 mwt05g8/8KCWqXEkdiAi8VxAZ4buPK10YlctRdY5TnkyXuWg88Aj52Va3oott4AcPs
	 oJLorNRYi48Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9886BCF649E
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749755359.32292.8390898775848426214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040613364688355cbcc312a08c77284b77027f056c9cc00cc7360ed9cf389267
Date: Sat, 28 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727497553
