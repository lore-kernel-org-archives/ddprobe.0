Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D862A25B0BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778628633; cv=none; b=BMz7gidt1ewUxX6OWjug5pOUdXofwufpqC6X39UUaY5tKY1HDOR53mc4tu8Oxo1Rh3T4ukWg/ogm9ur8x4GqaoR0KTMF9jG7Al+9Fm6rVwKtjV5rEQjSdRhMUWx4r6iWNHfvrhR8FQj1QcCZTX1+QBbq0csonTMQ3o3SSKjl428=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778628633; c=relaxed/simple;
	bh=BSjfksDBhTFbpV7XFulOMvGnpMv6dBqoPtWVW7kS2+8=;
	h=To:Subject:From:Message-Id:Date; b=ZfuAPhTFbE1WE0q/1nNiQ7X50amrVq2b7GRiCq9D8yCt0+kCTfIVwLOUbTEgHZmHfMz77UKZ5MAEdMfj4+v4MEYIeKoLkMX/nESIUdtj7uvXr/UA7n0cYcRhxLjDG+Pv/jIDh02U1kfHPMhGlEvhqO6T+Jsy4kJ8mHG876WBnkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLUm9p+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLUm9p+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBF2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778628633;
	bh=BSjfksDBhTFbpV7XFulOMvGnpMv6dBqoPtWVW7kS2+8=;
	h=To:Subject:From:Date:From;
	b=fLUm9p+8VM3V9Prb7dRPI9TlCcdnxfxi/SDbudH8ZZMVecZOIUAviZNuYg6h9Olta
	 MXFgDuo+6yAVKQesDfiM/SUxJpnrD/O1TjQar0z37nPIGEgLYUOW7ZHdtuHopjpfN2
	 MicoZo3IDIMQbdX+zXMmHFx+71NAAWD2paLvPVLCsInUUKcKC05DhxtcMN25QqhrDS
	 ic4jiH4INy+Zc36taDJW76lVCHdyTZPnkh8a5xq63/G/+qlilmMLPswyU3My+w15aI
	 84ZaD4r/0lRw1zAlUW2S7dMd/YOP7sGEQkXQ9Iv53nDLaMzG7nRxhF5fpgsESddXjr
	 kKo4n/5X7cP3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2E6CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862863369.25623.13441999928872742214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39986811d76df930999d755d94885a55d6865db055fa26d329352a67ff9d055c
Date: Tue, 12 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778628633
