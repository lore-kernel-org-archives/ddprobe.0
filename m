Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D210A1107
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807AAC433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673195487;
	bh=A/2jAoicLC1k+bg+u7dEgEsq/SL9Cji4IMNc7WjFKQ4=;
	h=To:Subject:From:Date:From;
	b=XM0bih05DIG5ifH7K+Y8Kg3SJBP7biICYVLnC2t9TqvmTtbPQpRLfY3+qcLOQyRgl
	 HrdhkPCTCvEliTgTx9IuXkoVd022ZQQ9YtKU2EgT4/hDl8KlUKwjwUo1Ue5/B2R1iN
	 B17j8THCY8TQlddR1LQ4gihY3nL91do9NMvQZzwriyPz8hFMGeeG/nyZOtKdaK88iU
	 Q1rjMyMDE5TwW53nszRalJ4AjStlv9ong1VQEWOitrTnFkNbfWEpPGZijiIpr8fZsH
	 DrtWiH+yB5LSzyTNtSn3ntDPWc+VblJ2hRnOVUh8EdH+zbAqpYrtSAIBV0JsvZJWQ8
	 uvJdZrZ9ZqtFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65402C54EBE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167319548740.25168.7584775784933947649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e064efa772b84c4e8f4f969006c6a4fe66dd57a0bbda0ee0e9ed11ee55224a1
Date: Sun, 08 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673195487
