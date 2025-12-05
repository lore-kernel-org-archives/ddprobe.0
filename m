Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AFA1C5D77
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764972174; cv=none; b=IM38rGUd+svPgd8aaeCZMMXdl8UEecmKkJ8bT8NgZ2Z/LLfpYyYiBB77J3Htvo7JfLbatDtGrRZgrwVcC+jTVMT6J7BbIKK2CULXJLMcb2ircP8gCKuSMoFBBUapRoz3xjjEjeFqNVQ0JotWdhRahW0JQW+zEwHN2Ur6v9jGej0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764972174; c=relaxed/simple;
	bh=j3mC0ATRiaWlKRvXQfnXEjkPedVp5JZf9Mtv8hVUdno=;
	h=To:Subject:From:Message-Id:Date; b=G1vSzq9jZIm4oFg1lR8aCsFQH/x1F9E+MRx/4/ZeMcD0i0cBj0nmh7y9GhNWYh88zwqfOh7brltvhY683x9iTVh/2JoP4fVwM9pqRal0YuWkaxyGZg57fga1iqv+StvDOownuoFn75kl0zOkFFTxo2RFDOCdh4dLGsIRxiv2glk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxj/+S0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxj/+S0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2590C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764972173;
	bh=j3mC0ATRiaWlKRvXQfnXEjkPedVp5JZf9Mtv8hVUdno=;
	h=To:Subject:From:Date:From;
	b=fxj/+S0p0k9UwdaWnfppz7XuFrUbezHG03aKG7Yd0RUQaCXWuRBbKMIr61WMPwkpt
	 AGJuLiwwAUNDImWsFKJMCT7ispHZMVflErAkminMJTku3m0aJlzjtsYMWuDx9Yipzm
	 bFJKOnHTtwklXA420Zf++nmKC3NBFPvt00FALIZ6a6NoxPxieCpcee8vWsCeZUi+Lr
	 W2YkVvmVuYGDZC9hDj3Xe23s31j/Piujt9ZhMjTjdZU3JBSUv5QprHQCgMz9i7MQ55
	 aw73iwKeVDH2h+TPeyEr5Sdv9sfWKsM8X2KlulCQR4gn1gX3pnbhK6TIiklQEfEASh
	 NCRKiVF9/5Ehw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98156D374AE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497217361.5048.14744893625722854503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc47366b4143282e22f47b9266f6447fd999f9bc68faa4efdf981c2391662ed9
Date: Fri, 05 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764972173
