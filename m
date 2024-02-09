Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD20657B0
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707472697; cv=none; b=CNO5zx+1lnQL9/8x/sq87Cw/7iMivBnrlsbfLKQIU/FCWAWYXi8KX/U6JDHAUA3+/TTRKjeWsGlp5gGlqbbhLrk8S4uAQdTUvORZvbgMMHxyvqZh6TZmljGxgLm1vsq2+DydFBwHpxQgRgRtr1esU3DwKptTF29cW1cU9q2QqJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707472697; c=relaxed/simple;
	bh=zSMyuUW6zqoTmjj3ceiMXvGP4+PuntWB6j6HfaBvOWs=;
	h=To:Subject:From:Message-Id:Date; b=VMtrtpnM4t4ii8wry4wQiQ+X8Pzu3zCZQIwJHS/Fh0ckAd9fkfPNNlqLAE28v28MoGp2Wsjd21PrNdiVpDY0lBmhTj7gzKUsfWwOBadOgj+8bOBvuJQloonFI81AZAGbVlP6VI/v6cSog89lzOBAJoX/WD2Skg1Qzbq0I/m+Vt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAIQuafR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAIQuafR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82949C433C7
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707472696;
	bh=zSMyuUW6zqoTmjj3ceiMXvGP4+PuntWB6j6HfaBvOWs=;
	h=To:Subject:From:Date:From;
	b=iAIQuafR2tczq5yosfiIIq4wgwGAS+YHSUfIh/ba/Q0YXP01uOM8+7lmatQRFdXSc
	 ICRCaeXGoAx1ySQ74s8BJqnT+QfIhkeUKoxGAb6qCjajGMvE6Kr5jZ/X3k/OtOLjJx
	 FiwaoyitOIzLrv04DU4cBnklGPUq3LdIIpu0hUD2p3hE6E44eDzWcrtzz/1xlAGJwr
	 /TYfPrZFjHa9pyQp9q9nzvTyhT1ZD3hlBfMzwhuqptpbB+JPFpt5pO0TOZpoV5Q8/D
	 ahvnLzVB1M0oWP54nN1gSssNANhhACrYjJi7U6f87pDPF63FxBPvZtrq9tNN5ejnPa
	 zEYTVHWm3+DPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65286C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170747269640.25729.9635024943476949961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 740565b11565d8fe6637b31066bca9e06c6524130549b1a95b1656d0b0aae39d
Date: Fri, 09 Feb 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707472696
