Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BB87F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703F3C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667814654;
	bh=hJTIOUTWBwARRzuG7NdASdBhciFopbSdVKD1eEW5MAo=;
	h=To:Subject:From:Date:From;
	b=L0rGjfKeetik5TkhCP3+U/C8LPriwNkSl4rIE/bDbLc2FXyBfS9JSqVCzJ1xEETmk
	 z9J3p+CHZ7BFR7r2cfBeE4H2tmpBXAjfTukwTNEXb1vupnSe2oKD/ZHLPaMCOK46Y4
	 zh0IUFatQCFiBn4/c4uYl3vyFNQ8UX1OV1cGEhssLwkBboamdugFAfU8MhjSusEXy1
	 hwV4Z2+sQRZ7Eu3S9+6yZq3LoIbJG9g0MK02GfVUCXbEciPT/kJZaO9P78elh6gIfj
	 IzNg7Da4MC43EUqrVvUVOLbLmBeTCq3wSCKbVygx5WwjPchEj24Il8VKSEA1HMxtk9
	 t2pJqtUP9Oq3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CFEC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166781465432.7309.9833481307556158641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5b62ba1c024e85d1e3814d806f7e2e1f6adede7c038e965c9ebd0ac258d9ac
Date: Mon, 07 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667814654
