Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549113655E7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791670834; cv=none; b=CfKyWMpUFDVuZwLml/wxFjwU1PCF2hNX2nvwcO+Z+4UpCDLz3Qj/L78PY5AiDrlYYXITfJtdFLrSn+OkOuSiJLC6o/nBSYOMwUd/GDJVZe3OM0wZ03zO2aYlTVRjG61RHS53NJMAfKqYhdixJ6shV2DoPz8dH+xmKSR4wAb65Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791670834; c=relaxed/simple;
	bh=TvQ/6d0Q+PezhYCRIRZaSgpYITNI7VzseqHOeDdYVJ0=;
	h=To:Subject:From:Message-Id:Date; b=FVAjx+uSpQhdzUkGUTutshhttILVEEZB+RorhyJVguVIWjfe6H7chzIWSkRGca7SmR0YUFTAA1N0ohHhNxvG3e48qhth5grNO1WkTv++iPF1BjzAzHZIDSShoTl3LZBlcj0l+x7Ge9gyzYyYIrJj7keUU0t9X0opTRkHpJb/w2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQ4JRyg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQ4JRyg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B97C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791670833;
	bh=TvQ/6d0Q+PezhYCRIRZaSgpYITNI7VzseqHOeDdYVJ0=;
	h=To:Subject:From:Date:From;
	b=SQ4JRyg5BIOvORBLX0DT6B+YVknk7gufnb5rpT4q1OfxA17X0UCuzbBV1j7XL/0PS
	 MydTCRkS+MW7N6NOQwNkR0c2ib+ARjU8giPF29j/krAneZ88S/z1TM8i/0zwXMxXma
	 yTMM3Y+QUad/7bzcHfbllfCwOKYS1uGPa/FPTIQzmFoC8GFMJBekPf/9BNHks3LtT0
	 fR39dB0QSpm8QO9rOQCVVJVZU3oD+Lx2Y/3dp8Eh5tx8larGy/USPAuearDQ5cZQuL
	 BdF/rLawoJyvVgbGN9ioQskDBCdMhcIXOa5rTbjK/dAqnhVuUpI5Ktq6+xxQNcJp4U
	 E6p9zOIPrCeIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BD9CA9EC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167083368.24756.14289974059025672255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9d830e3cc40b8cb8d6e5110cb7a4e4fe707ad8c909a9ad27828cf7004eb6cc
Date: Sat, 10 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791670833
