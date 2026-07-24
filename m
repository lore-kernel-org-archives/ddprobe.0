Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568AE363C6A
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784920834; cv=none; b=OSM92ScMFFnq3J0s/ksKMNYQLGLY6TjOdFmvWkgIf7V2B3BxV/WDxntEozEOW81+F/bGZJPMSv38zLb/b8teLv+nPEhKJgQMXxbFKmLAVwDiFwqPT3u/M50YgruhYHZuq1DcxnniAJCmtdPbA9Na1CcqYUqy6O6DosEA0yG+20U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784920834; c=relaxed/simple;
	bh=ZgKklrNIU3nUud3HTCANxwujnETKi4Qehh0tsBqsGm0=;
	h=To:Subject:From:Message-Id:Date; b=nvesy4eMCXdmKyeUSa2upxlRk98+d2RtW9cKkcMnDMUrJ32ronVGOeSEaC3VioObpJ98q6TXWnMZx/6GlL2JCg4ayfFLzEjW0aNoc/i7OM0pVmTbCUZ6wthRe26XWUgeiTTI3VZoZWiCo7/AJOVBAB8OyVgtpQ6REIuXVvl4Pnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iR1krpQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iR1krpQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B8CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784920833;
	bh=ZgKklrNIU3nUud3HTCANxwujnETKi4Qehh0tsBqsGm0=;
	h=To:Subject:From:Date:From;
	b=iR1krpQCwXohrm2DNTTmdA65NL5+78sfGovX2bA6J+3kMXQoJioUOcJ2MGe9KbM5+
	 bmwdXTMWGG1woSloqbgmJXjDsYV9D2y2qiJoPNciYX88X+0sTIMeEa1y34eTAsucf1
	 rO9H1xV0Xpxy5Q+1Jbr5whvfBIQKVMQU9+E7kWekppMBv487/V0wwyodiXV35FBRVZ
	 oThN7REuMgOkElheXu4HqRUefbORlFqLvzVG6yJHLbP6tFAnMzjN4z4J0VnepAQtAa
	 4RC2SZ4uYukfri42mPH/GvvU0wNxsJlEKYp08xNPys1eCnVnvtkb2m/jeQDHz8YTfl
	 pm6zQ/kGRNeaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE23DC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492083368.5403.6793241536446288040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab1dcc37b5b7a0641aa908ee26f3d32198f35b09316d4fba987366e148f7888
Date: Fri, 24 Jul 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784920833
