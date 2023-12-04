Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B6D18E
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tL7zCp7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 837EBC433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701649096;
	bh=oZcfNJogqXEJGXmeQrxXp9RPeK7jYid/0dpf4UFhxno=;
	h=To:Subject:From:Date:From;
	b=tL7zCp7lVqakv0LGN252HwnFJP9jeuizBY518z6XAFqQj4fIvFXyT2ktvBWXxrwRD
	 DyK9GXBXZSXb0NZsxCEjrh8HdUnNcHsLAciRylOrAiW8mSdtKyONNuj2a0fUGPxwXb
	 AzX+3Y0kr5FqRJLHiRTy/X8hqAyTn9og0kTw6TxU6d4iYZp2IZnF58jo6IKaiPZsSl
	 0xNAElpSJwfbz8phUmnUdmOoJIv+0GMayWcazuKQC0a/uLmETucXrfPgnXaGB4NU9A
	 a2a0PBojys54LLJw2qmNyux8fs/hSLqAh1ZHABdZOZglc29llS0uRX2wbqIFV2VIni
	 dz07v72YDFISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A17C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170164909639.19312.16430637059947814810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b2f88faa51fda222c67fcc84aa3b4e7d865620e60029700de93dd82bab90cb
Date: Mon, 04 Dec 2023 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701649096
