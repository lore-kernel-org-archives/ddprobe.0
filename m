Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 072B740DFB9
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774058694; cv=none; b=rQ1wjFdvXR/3b6qSiedEcGy7OaAtjzyPgoAh6H1CI8SwFOu+YwbHtDbLg4SPKeQONtUEyg4IrCk4kOnfK0tKvNL8MsykIl30P55MC7VTtQ/monAJFOJThOWNpZkFVaQscWUo6957VGTWbDRshfzjvWka1lb+i1/ldRjonErYzQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774058694; c=relaxed/simple;
	bh=vBoE7tilY7iRSPcgzd76w+5Lf5bD+RXYyT9QXOtsYJY=;
	h=To:Subject:From:Message-Id:Date; b=sDlc0AdQV1MQuZ8IiHVeZ/mn1WW2qsFPJfQpmBPlp7dNMF+dalvZ0w1HsRItp3cTwWz7LAUN+M3tx05ix360ZSAhxRrSOWSwl6YpDUf0YiUYYTyngj3OUO0s3/sK/NzoF3aTn5ZD8A/lwuS4YRy/NZCVODdjAN4tFsv5kii6bxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePFO9co0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePFO9co0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E30C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774058693;
	bh=vBoE7tilY7iRSPcgzd76w+5Lf5bD+RXYyT9QXOtsYJY=;
	h=To:Subject:From:Date:From;
	b=ePFO9co09hn+oJFgSzwh6oKtQWM8Fr+r6jYTXFM5Jf2ai9sC4CqYJd7KKiQkGvOW3
	 AvhIReIoijiaKDWMX5/22fO2z8/zA0MpROCgNh9PN4+zw1K1a5vkFoORoqyMckTzZt
	 U2L2FJ5mhBdaSzP5RdHqib0G3U7lEyPOI9Fj12SkDbwW/wifxnnHMbeUnBCiJLqpCX
	 dsYHWTzV/EeUX5zqIbOfZFvMYcLt7CIXGSKE9S69+r0QHZicuMSbD07MeIhAeyVgy+
	 9wcB6a6w/4EYKosGwx9klZ+Yy6K1e8dwzrIVEU0SpNRl+FQOy90RyAm1xIEvKbD7OY
	 cD2znVCWcgUoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A5F1099B59
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405869357.22633.10335006634422705703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7860088446921b1b3aff492e059ebb9b5536eb6a2cb293c34707e0e102bbbfe6
Date: Sat, 21 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774058693
