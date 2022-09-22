Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B409C3229
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E809C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663847453;
	bh=2gAuFaH9FfoMJ3+9q/dMJyhelGxCDg4j8JmfkylaOss=;
	h=To:Subject:From:Date:From;
	b=OJFwWTtiy84SeWBQOCZ+BOjR/sxa6uADnwhfpLlVYY/jITDR77IzGUUlloZsXqrTc
	 iXsMS/E1x3Q9XLIuuekeBXeCpY3K/FQ4MX1Xnv5GcqM83sKvaCW31lq6QQPBsGCzmm
	 qDu0fOav8FcO4m17sdE/MXHq3vfzat3nBYfsi+onsD50J85TwHWlF3FR9Kw338fqYw
	 uM7sqIS5K6hLDo8B7w5x9CmQQs1vqQH20LSYhXMoopAQuSrCDRr2+bo7XXyMBoS2a0
	 ZCpPET3qVqwS2XAWiS9DmDLCrZQ7APNbULk/Qn02cK2v/993uQQrcCiCaQPczjoBJW
	 S0PsYHVYrisjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536D2C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384745333.1716.7970825488197794043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3184c5f509e1f5a540cb3134c269c0b4f17750e67c9b8e79d0a4e90a6489d58
Date: Thu, 22 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663847453
