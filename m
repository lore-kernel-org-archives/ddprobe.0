Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730828C0F
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 20:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17E7BC433D2
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 20:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683750066;
	bh=6aH30Tf0NyKHlY5r5XOTNPjoHdXAyt5xV53+fWTxkak=;
	h=To:Subject:From:Date:From;
	b=G+RDf5OmfVuNzHg5pSMEhz4t4gj6QymPb750ToFrzHGcRCr/LVVAhmKb2VLsZ9KJK
	 R2Gb7eK0g94N5+g+oqSOXS+Ht3jBjFpFY3Xtm9Ae0258cv8sDxnGJaQOq/zqxMN1MQ
	 X53AONcZMpA01AvA7c/T8A5/nViogTJ5YmgqahuLEGXJ6nNe+4g1hCkoaIhqOXfRYT
	 YEH6Ysb37CnHojlHa2VqdgPGUyZ5mkWswbTfTRH9o4t/W0zUn24OfIFt/WLpSGlYU1
	 47eD1ujrkOq4e9RqBdGZ8dgPQn62nN5h0W6IupEwXQV5wg9Rw0GlfeIQjzbpxO8cdO
	 8jVA7NK1WDyQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2BB9C77B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 20:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168375006585.19871.9837807844002276754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7167b660a5477a8d7f3f1e5d5c9b14261b885b8065d3330795083a616ce0799c
Date: Wed, 10 May 2023 20:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683750065
