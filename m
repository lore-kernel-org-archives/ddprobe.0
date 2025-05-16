Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4EB24679B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747415994; cv=none; b=Evw7ULS0U+cwUP3QRjLg4v0uPJY8gR8NJjIZS0SHHJfcwk8x/rOMjDkgywbpx4zGokxk5tzJrYQcNNoFOXa6yx5+CBt5l4Hlh1mub7LL1qtua02fXcPr0vuuJedXJyXacNbwQmvcEFKTw6ZwznTTDzNIoIGrpETEOfxQL2+SOm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747415994; c=relaxed/simple;
	bh=pdQ8CMjGyN4m3ip5/JL1tugwhagmGUXrCw0tmZzrDJ8=;
	h=To:Subject:From:Message-Id:Date; b=ZDt6FBiCmNErxd0TrXnm7JsaDauYsFRuK9CRNmsj8cuoZ1L5ArAjBdHOuSz1+K7e8zhGs1jT90PF5EP5RXhkqJCZFX3QwNr0/Fu4o8s5s9mfhoOJn5DiQVXC8bPoHB91xo/pw2IU8/rGFmgHe6zaLMPXXF0/MhK2y50BP3tVNRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGf4qi9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGf4qi9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59A2C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747415993;
	bh=pdQ8CMjGyN4m3ip5/JL1tugwhagmGUXrCw0tmZzrDJ8=;
	h=To:Subject:From:Date:From;
	b=nGf4qi9DhoYTsvrDH4g1D5fxqfi++TVJqgRJZp2LIjnQ2G57E2+7yFXCl5C3+FSWR
	 L3DvASRRb+1akVWU9Atz/xvGqZ+Fi4m1DXsoAVc9kRhlQLCMPM1JViEzllZburlD9V
	 h2G0lwh729UvlXy3ACDR0g85Cygq78c3zc+t8kYsVqpjNyBaxsX6Ta4XsqeMkpFbTI
	 v58dOcFW7l4XvvzkZDrocW4cofuqZItQwhsCOHBdoVvWzFn6OHdTxpuzvdClrzEB9/
	 sAPDBa86+pnoeEv5GAxdvJw4kYIIYLrQpZ4ZiPX5fnxpE1UFPo9ywYS4F2xEb/oWMZ
	 IGX4EGg9WXbFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908E2C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741599358.31477.8702505121578997855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d9c4fd7caf33f7dc3c07d7e950dba094eee81be79487fd471701b7793da873
Date: Fri, 16 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747415993
