Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D902F2D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D79C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670436654;
	bh=Vf6mwPRbw4RosUFL5M2wNqXxItvFCk8jENOl0TpAogY=;
	h=To:Subject:From:Date:From;
	b=WV5rFDIcZtmQRTk/cCKO+J3yNfVyH54u5l8ZqZMEASp2qPrqJNvlG3DQAhYL/zDhs
	 1cDZaHTuFpW0Z2zCByIt1lERH67tNqleF3Ou0VC/838dnZm1C1a5rD43GODwvHdxk1
	 z6P1XxnpI14S3c9d7ObN8kvJFsgm/m3qA3xqvI8lqPb89LdqPK5pVwfxhaUOULoVmN
	 e0mE+p6Gp3ms3IHWIJJnBQ6SRSBr8UBu+vLhPkKnSN2GR+ZEqxkqEgRddMwpNVBKgw
	 U9wOynV1I2CXpz9Uud6+wj6TOhFgEMuSBp6PkXgJ45ljNFhKGRjJmWe10sPRwEIuen
	 RQrc14bdnr+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AEDC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167043665434.28380.12690281713814240219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7777033486113433a86eafd02dab422906321b3289c4a585364a0d2b3b093e5
Date: Wed, 07 Dec 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670436654
