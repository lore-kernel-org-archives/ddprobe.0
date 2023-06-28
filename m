Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5343D6D24
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFA0C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687939988;
	bh=bRvvC9qLv+4YynOKsX3UZb7GFYe5H+hKywCaZ+BblZQ=;
	h=To:Subject:From:Date:From;
	b=Y8yVY59jvFlSqBgAaiWAsKhu8ybrRfC1xa2eYjqmIVjRM9yXwVNd24/BavRCm0qE1
	 ixcnULeaa+g3ZRinSko8DnIrC56Rc4HuL1A/36k7VideIVxfFRaCrwdTdk4YJKtfs6
	 v99UvP9sDRwu/qH/YmtgriF9ZHYh3O6F0tRyIttr9pzGSGX3wDzzZ224SM1+t6PzrW
	 BAIY97M//QGvc53zciK8z/lbZLbow+b9Yoo+WF6D2qCQRb/BRaPIrmB746q8N1fSNs
	 kOaBXLKTcjHca99sLoVhbgqzEI0ONLPgM0VslxKLUIY0deV/O72obXxGg3Zmj/ZEx8
	 qBs45LsMWBbEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC67EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793998870.15623.11096585178751777773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2243958ee593db6a21ca288a5d26edc6909b01bd86c537ac15eed066d506f0b5
Date: Wed, 28 Jun 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687939988
