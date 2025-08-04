Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3102C217F33
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754331594; cv=none; b=FFRAMP66jrpE+M8gKdBrrmSI6lorwVQyfMwih5iuzlGsZ7I9IXHd6knWKY9n1S/JJmfYw/o9mqG+pKv22OPcl/rVAh9z0Da6E6bZYhpS/7WsZghHJWFjKSpiCbikS7sB2zE9JtaSzdt49cQqGLORhqivooV8SNxqeot1WmPhkgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754331594; c=relaxed/simple;
	bh=k2QsCf3Xvz84wtgOIQZD/5Vr6fjyE+YKg0x2oX581Xk=;
	h=To:Subject:From:Message-Id:Date; b=RzlkkLGf/AJREfXC4I/L8ZIBB9ugFYuS/Pat67QZC9VkK1Q3jgw4QtuMHvjXbBZoScrIQ/vEfmbiX/oiJnPaawKF9rJmq0WZY2Cujvr/vA9GscN5FNEM4QrsnZMRy1tWI8eb9suF7KtRi2HwXHeEG35X1+cEjjCiMS3/JESGWU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QbI1ETFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QbI1ETFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0141C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754331593;
	bh=k2QsCf3Xvz84wtgOIQZD/5Vr6fjyE+YKg0x2oX581Xk=;
	h=To:Subject:From:Date:From;
	b=QbI1ETFLvEf4vNJKFxTsQ6kCkGvqB/5SlQBm8RLGo9dQLTSM4hLSZz8NQxXK/D3zu
	 s7WGiLDs2B3/Dcu+DIqb0+VykeBONsXsW+WyJNK8BVR8JUD+8Egb36An9FWcRjWCUF
	 A1myBWXYB1h65YvsMEkZXva4Fmfohu9GieTlXvIwfBJ52LB8qY/BKLaB2gBVLcoa3J
	 YrMBiABsccChiehgTf7Q3RNaz1d4LbBva/xdCvzSS00ndNANQR1cls6R6PwonX8bNv
	 kv+pBzBhZIk3Y+XW69kCQJUKzjk7+VNEzf9Hp7cuPStDnjfIjtJy6fuIKGr0gKi5wW
	 0hC4S6o9UUmKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90720C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175433159358.1279.17772700036211692774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48e3390f6762ba55fa038d946c9e5e3014754025e444399090d79110ff6e9ab
Date: Mon, 04 Aug 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754331593
