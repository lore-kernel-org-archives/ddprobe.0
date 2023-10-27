Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C526128
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTtuaqNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE48C433C8
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698436696;
	bh=z8XMqZTNWmzeTalkNKvk0nuRnRp8K3Ok9MZyzQeN3Aw=;
	h=To:Subject:From:Date:From;
	b=cTtuaqNTXDLvinsNLmW6l8zydtEIGajcBB6/UZ6iFa2djElwzVHa9KLcW+KfdfXZO
	 CQ+vUyllHveoSkyKwuMGTmBaEfLHLlaWfXQtcIyKtLOtGHnqJ+5/z0NKi/CqVecb/z
	 xa5xDXKV38XPBeln/PrXrOj0l6duHN3ZmotcQSHMTqzYI0TfHl5Fr619iXIx/L3/A/
	 qCVdeo4Prg9SBzsfu7wH9MvcLFNDQprCQovj1JxB7iCZO4SM6s5gWqibKrT1NPTFzk
	 9DQhUhYZU0Bq9edymY76Imrf5lz636judP2pCmoUQRgNBhEis8y829e0Ck3QEMaw/3
	 eZgqWFPGAyuxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6716BC25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169843669641.11609.10968184671004101315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08e3642a5032f255b5b927c2b2f81255b8d1fb6b881b6f04a41cc949022ac34
Date: Fri, 27 Oct 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698436696
