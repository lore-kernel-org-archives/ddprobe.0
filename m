Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371231A9F93
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763322714; cv=none; b=Ft/tw3bNi5sUQPaD2aMdDUtIoO1WGdv98OTV/W4YBz3eKSNgbJMeM3DhAQl/AzHjz/ZtiO2CSyhsjumhqdzdcRCZ0l/QV+2ChtpPBxz6zy1DGsX7XnxjPjNizeLppt6chlG3nmEEPewzgLhydd+QJ192MaRfuLJSC8shIILcVig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763322714; c=relaxed/simple;
	bh=OegybCkmC8vurELUFfJHbLTEh6dwKM83hAanYt1E38M=;
	h=To:Subject:From:Message-Id:Date; b=Oqxkzfl3+FGBY7mOxMLVUpphkO38tAh7HbHKgJyPHyvj7J285EoQVfEXxto1XmFNXGBIGEQH8rJvERlP/7qeiSOpF1mpnQ9CNWwUTDbGpwxIYXiliPL82U6RyqxU/WMyVXyq1nsIEKwIM4gVg6HDSroDX4iifN+uHqE6wamBRGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoQgAyoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoQgAyoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9056C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763322713;
	bh=OegybCkmC8vurELUFfJHbLTEh6dwKM83hAanYt1E38M=;
	h=To:Subject:From:Date:From;
	b=NoQgAyoRKNTjIdYNEOTlnCBNIW/2OMlf9ZSmjdsiJ3wDEVFaLLDYBRoXLPq5Rgzbu
	 Q89WBeIUxrwgO4mpLgKyarRIeW89HNrMgj4a7lhbrujn3pHFjlLVleFhl6eso5sqI0
	 7XMPC0aWFmZb3Uw0g7xr+/4k6Gk9GckhEUoi+RMd3QkJEHGxGLrEes+p/2ytSn08Kl
	 oQ84iXsIXggAzFEJLOmQnvMmNr0vtaUggPAnmTwP8/+j4c7e7zTogp+Oc1O3+OYebL
	 MCyUCdObi/e9Zz/K9IY52qziln/YMt3Q4Uis6BXC6S2+hiBb/WsnWIiK8zVOAKIEXq
	 7j+P5l19FEX5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3F8CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332271358.10903.18253221403349373720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8dfc25569c9b52a8d70ee35057742eeaba3c288367ac0d9635d689fcc209ac6
Date: Sun, 16 Nov 2025 19:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763322713
