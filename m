Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0450514F62
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LfbdWOT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C683C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703356696;
	bh=eNN0f7HzVXFS/YCCTG0aqeyioaLmXAJWk8CNKiBSDNM=;
	h=To:Subject:From:Date:From;
	b=LfbdWOT0h+Bi5Q49AL/Ze9tlXO7WZC0a0yowS07pVkrS7gW/wLfbK0NfK2iswvm+x
	 K+7Fq5BoKiv7Z6vGW9+zoCnA+vdGameFmUP9hNavwFzinr7qKoEZWLSN7aAmlDV4u2
	 Wauyk5YEGhOQ6gqk3IcU/WCtXElAdgmEZFquOwsBo7AkSZ/dItvpmnt1ek5K2wDT4L
	 7MArzs46X2FTlgGXed/Uot1PRiUmQhHJ9jogdoRQUKMpzxM2BeUIcdnheVwVDbykiD
	 Er+GmZnhubabv3Qkk3LHGF7WmxykJy9GBfOqruXLUhCBs3p3OV2J20OahscedoFDMi
	 uL8h6qRzsYitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A79C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170335669639.28371.13726565133188174588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b013bae43afafd96d8e46eac3829589a40a3ca694656334a916395eb1ea329
Date: Sat, 23 Dec 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703356696
