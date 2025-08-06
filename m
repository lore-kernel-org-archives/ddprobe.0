Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182E91FDD
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754501994; cv=none; b=ByNYjmGfEJ5mgB0Q9Zj/XEAzDe/OmkqVuOOPHwQdWI00y3gNcJmu0wRcohLoypU2tK0xWcHa27HaNlIySEfwYxuAEunCLn3QAV9DxF5UJyKPtGBpG4U87mEkUGyxOdHYZbq6uCfIdQUoq6lRr7/BUvwAkpyulw0FNGhNR75j/vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754501994; c=relaxed/simple;
	bh=1KEnSf83QTmtdDnluygXTARZjT6HEOv/9ggb5sr1mvw=;
	h=To:Subject:From:Message-Id:Date; b=hLR4Y7Y0dhDV23TRkWxMPzIMMrxTGLA5L/1uIoBSaNRxVyeHFnEBu6gcgblW0WNuP1/IiNGgbZmTC3978Na88exg5aYc8kbnTIHJyJNHyOPKPp0f/kWzdH1hPd7XOleJQG4RHFGJB06LhIYw82DTWvAPGA5Ac0Qzf8JBIAE6elI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWajqGI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWajqGI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDB8C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754501993;
	bh=1KEnSf83QTmtdDnluygXTARZjT6HEOv/9ggb5sr1mvw=;
	h=To:Subject:From:Date:From;
	b=OWajqGI9ycE8HMPS8PPzgtsUw4rE4pLM81gWe+gQEUA66H2WlGMZUXwbnNAVW63kF
	 Av/eAsA/3Ajj8MbRdzk8tU6nVP6mWk3g2jernsnqGTjexbrGgBK+/vp7SjGaHDhugd
	 Tq9tHGJ92EUVTnmStNSdCfclcZUys/UR4glmvcYhuitWaBhBfMSIPF3SlB5TO3zRXe
	 Fcy+zBc8vlYAq6v2kSHn6RWzZTFjVjLihqMwo6QdqAshnIYAvuTxLjoGD9dQlAnNVc
	 B2lCke9l8WKqY/eN6UWtvbX9LZw8rzrpSAJdRFj81qyy6DR8bDk1aHaFvgCpH61XYX
	 FBIV4EV7q6W4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F743C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450199357.9766.15056611691186485142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8b85acdf7215ff4e13077124b6c595b6000158c042898c0955d93e63a37bb8
Date: Wed, 06 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754501993
