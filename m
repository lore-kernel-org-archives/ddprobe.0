Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9002F93
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqwP5wZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 921A0C433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698000496;
	bh=0p8oHbn8bBjaa1GIu7cu42HFKBjM5hDJEewSbGJGkcM=;
	h=To:Subject:From:Date:From;
	b=MqwP5wZr3/G1rMltdTZU39fOZuugFubi9RGGdMquJvKp5TLRvAH/a8SOapHAx5NN1
	 epH8g4VPlIh2Cgj1oWS4OV3w0EBqhDb6EnmGhyf6UV3iK7ZJw4OeDHCU4GbSduZBFg
	 qJNHE26dsB6xJTpaiSVMv3O+S9xZhFbNp7jIBVN41ckeZwH1sgO7RgPhYwh8cw5Nuf
	 jLX7r1YUVLSg5BN9qWsL787itOQYZSqYNAVhllcCAD8LuAFibuY/UUk24xac/5hLge
	 5ORIdVhNBiPeosG2RDQJpSyr4pC5rY0hOqO9GasDLteWATnUWdNcrISGlxgHqEMOwa
	 Nhv7SNilWFZSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 715E1C001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169800049643.5711.11183210602217382715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f10c835ca9ca64c15432af358e568c81dcd3b705d5cc8aa369f8076431c38c9
Date: Sun, 22 Oct 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698000496
