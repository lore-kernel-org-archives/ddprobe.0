Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A95B1E4B2
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEIFliB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6EEC433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702739296;
	bh=rWzLxlZecKSVEqpU/I6wGqvg84ckWGAxscUhK3vL8GE=;
	h=To:Subject:From:Date:From;
	b=DEIFliB3KHhAKjmEUyW8r4w5gCRVeMbRHNJzAIkdUuRLM+rZwTBMmZPubTQ0KSvGO
	 I+ns7QRYVefnkFB/iM2RQFhjv3vOmAbF5VPerr10u4heRWLk/3eoDm7JBTAceHeOEr
	 WUZs2BL1kLRdl2dvq1gg3eEysS1a8uzsVck+Q1S5PPnB/zelKAqZRwWvQPFurasaOZ
	 oq02WiuZXWtRWrQarZfvsV3ul2zycyskuI9h6v3X8oEZJWn2JNUh+71G2v2DXczBEp
	 3WiEkajhKgmQw6NBEvaTnTRfqMUcpzrzH1Y1Y1UYHf1xRdba6U24+Y61kG1koeJQ0u
	 W96wy0TXwiZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E34C46CA2
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170273929636.10721.6013977569977851950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c83675e4590cb91fecd112ec0cf8e0623ad6ff2de827bca14694c8d1f3da0c2a
Date: Sat, 16 Dec 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702739296
