Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB4F1B282
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BranCzo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A8A0C433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698869896;
	bh=bCdLDIlBCTuk/y+SVYtOIklHgJaEXaLZZkfn2ICdZdk=;
	h=To:Subject:From:Date:From;
	b=BranCzo0/DxjJFFv8Ml2O2uVJ3zKW7V866rFDw8Lr9VqItmRXBD0OBHwMSW87gRZ9
	 VnV4uRP/F2iUlL5Cvk2VJJneBt8HTUSFM/S1jwW2207qtCNoJ9YymXfADZTvjFT30K
	 K7RgdJRGO+66KzkTaW4f32/it/HPeO8vvBcOILS/U3dnlH8iJhzYfaszmrNK87mG9Q
	 IjHUYk0pC0m2d3iA0YEpg/vh1Pfp4A42gZ6RLZ0+T9CJdDOCIkxSuu3QJ5V2GGQvbk
	 FlQ807Nw3dluY0PSgc+xRFZZ6Xwiq9kr/v+DzSPoJhvQNccq3r+1X1N9Tks7cEUqa5
	 L86DLreEuksJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A760C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169886989642.13393.11893581801113596847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7b4487eeca8bcd47950520fd6fbefd5d15b5bc261c5efb484b5f17005a0709
Date: Wed, 01 Nov 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698869896
