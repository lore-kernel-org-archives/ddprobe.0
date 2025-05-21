Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C136833EA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747867793; cv=none; b=CjMHksC8R5WxHJBGnBd0pIn36z1w9uVw+Rdl53nPjyA5rM1Hx+XGn4W5e+CgZfcqib3KsaFcKA7aSflj58XueW8bdwcHce/NYB2KhT0aGnGMw8ZII/gNxPMubv+UiGhvQuHP3Xj+E5LnA4395NwLvJ1xpP3MMz+vv9X6kr0ajDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747867793; c=relaxed/simple;
	bh=xg/gTc5uOJDBxo2CvdsJvatLX9AGmBxaCUVAQEsGawc=;
	h=To:Subject:From:Message-Id:Date; b=mLBiGq/1ZnxH9XkXhR3yc1Bo2gNHhkicXzbRQWinWAxKjR5+LL+Nma+uLYQfrnTT7Vg+2UJMf7HDMykKfXEi6k735d6qGoqBB9dpHzCANxOJRruh+C9U9R6Oa8wEfWIbhw6SGTC/Y6Fsp9Qh9KYYkewn0eP+WMerzxqxEfGpzMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JySrzAXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JySrzAXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04DAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747867793;
	bh=xg/gTc5uOJDBxo2CvdsJvatLX9AGmBxaCUVAQEsGawc=;
	h=To:Subject:From:Date:From;
	b=JySrzAXCpIKD7WpU1UsRoCF9AoiGh77/R4IV01AsPN2UAS6El99+ctglHCCv+c8Am
	 41NLq9O6Vq+F2/jmUZKj69WyLYfnC/P979wvL4A+AuL/2O4CJjVLKBJVgJaei1Xkmm
	 EcSRmKWHmnGGN+saC1/e203Bk/jfTf1w+gBHh+3gP1UfUh1x+D064PX7XJVUW1v0LL
	 A/cK4p9kdjc5H7LlEaY5E+MDH7wxaIDTy123LnJUNFRsj9Cm4HF1seYvybeHWe8vNB
	 dk0x6D4t2dgMTRA2IOMid+q4a6C4O0+9DSXHNyPCOYksy4QiO4b9i2f/lNYPm/WDzQ
	 n+jDzrAo/UZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17DC54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786779357.29995.4555350607423115618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471eeb0555bbbed79c61b19c94c385d605db47cf9ccdd6c9beae9bbbe777ee41
Date: Wed, 21 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747867793
