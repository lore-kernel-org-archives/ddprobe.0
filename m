Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECF41FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65FE3C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666950054;
	bh=hQ6yjsd5H2UiR5RwSiirkhGFz97mq+whC/JMkLYs4Ro=;
	h=To:Subject:From:Date:From;
	b=Q2iu+Yx7WMLkyDnG6aeB4noPFLhzh2pC1YGrPZ69BndDp8hF0L93m4dFKVSKtXBZQ
	 hoUMSqAfd1TuvQTe2Mvj1MQmOwpxiCWr+aBVeWjOhEUTIRRmHRSre+Zi9nfMONa/Hl
	 xMKyK61H281ktx7SlLRn6VqUfobSuLvSsaYNJKHzZu6UHU0q6FBAiJbz8e7nurouS1
	 U1F+/+KEMAza5v787lIbIxzLEP9xoeuqq7WV3+a3ISvBi9p4Dlev6AayL1gDy1Srv5
	 s70aNkZvYPnNUJby8sQnYqcPcghWVL/bBvjfiAqdk9Mo0QzYvWiZqGqJcYfLXdfBmD
	 JGbk1Tt2RkFXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51379ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695005432.29158.96597398994373470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93eabb431ce31efa19d0152fcfc5ab2dc7543c14983ac83fc28751c90a58b2fe
Date: Fri, 28 Oct 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666950054
