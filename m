Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925E263F
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 668BCC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664290253;
	bh=nSvAtnbYo8FSAophzmgwpVBLgpN9minS34UQWMQzjL8=;
	h=To:Subject:From:Date:From;
	b=qR/82b0tNjz4XxLLuxbVuTyrMc6fyYJxE+p8wJlcs4hN4sLtbuqqLyIqtU/dVRmOE
	 keo/DQoEr1/XIeLOcv/vLSj6bSjd+iP6M2BiWhJHeyV3itL7QqWNfYVLK3JpQr1Mqe
	 i2fxuVaE3x74CBnfrVLCijpRymdpPFAeRhj8gVYaEyabrY+U5pQ4CsNqOQ/JWTTx+v
	 pz0nn0a7ieqQwwEvqRC38LjS4jLOthvFOwBnnzU7KjGgMu0kImRiYhtNQ2GdzBx5aU
	 6+QiTw/h3Do6Pd8mqNH2UA7m6U8KdK9/1ECxSWp3n8YGAPqbN5/9DiXkYbsubgfKYn
	 LrIrRamYMqFDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5077DC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429025332.8604.6874444554155566110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e3a1a5f8f38debd636b0c11602626ae578fc7d084c55c531316cb0eae93b21
Date: Tue, 27 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664290253
