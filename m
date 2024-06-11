Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4201ABA46
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718117305; cv=none; b=sN59e09URBe7ctWCIJWQ+5iwcEAczPT8hhPAgh+BzKc2mS+CVG6A1OmDJ2gDDE5ORr6XXjqvedSVMwKewhAf5rrcu4KnoZkstjhzdSsRN3GS4x3SuPPpwLm+qsRCawgFIecw6AcrHSEoOrOoG76g2BAC3F/GhaAAqEQj2EMQMHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718117305; c=relaxed/simple;
	bh=6oGwRSQlqjKmelFXK7rX/LiwN2xmCtcU0Llr+1uRmHM=;
	h=To:Subject:From:Message-Id:Date; b=QtzYXGdwHR9SW/XPMmI8OaZaLFhNY/Oy6qe3pdNgrRxWnZXAEgQb2NO7EPGGdeImI7nXTrzHZS0hAmI3msCMIOuypHx03vAE9NOUYAT2pVAynMsM3jw+Ru+SrfgH7ZceW07s7iQ+lTT2QRl3zvgIbKgSFaEGibqKv2hsI5D9LXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ulg3ly+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ulg3ly+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAFCC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718117302;
	bh=6oGwRSQlqjKmelFXK7rX/LiwN2xmCtcU0Llr+1uRmHM=;
	h=To:Subject:From:Date:From;
	b=Ulg3ly+Fssko0l8cCUTQ1ILAY8g61kSkQ6wrXpxRwFQb+CJs0eo8XbnYGrsHulhMI
	 docKOnL6IXnxhiqJn2b9fJPXCdR7drJn37G+Y10hWLFr5pyxK98ETwFnKopyF4Sv17
	 vMsS6GucWMqRZeO+9E+szJxE9fJNk9w8MjXel+XVYx4JvJJJ67ccTkWcUMlSNxT7aI
	 vzCGQzdj78ZYPQhMGCOVssH5bOVpdl1tC3IkqRad81v4IItk+YrvLLLUcDer9wTl1S
	 QaS/Qcdj7xTgHfGlbMZgNCp5pUH8+F45mm3vJFJABS+knjayfqmGq+OrddKyv0TpnW
	 J0mA+3ebpIEXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF23BC27C75
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 14:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811730276.19659.3294387305643955311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09a53481f1abb5e62c1f781fdf6ce6278e83cf32e18c3058b33c40a87c0a94f
Date: Tue, 11 Jun 2024 14:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718117302
