Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C111D1876
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D996C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665336053;
	bh=vBBjHJaUwVJ+fSW2um5VjFjZUIE193IJ2KBfGMeIUA8=;
	h=To:Subject:From:Date:From;
	b=fbPvMKEnDHDcs7Y8gTsgsyror8Mz2k7ZdkZ43vH5gYfUbP/XgYLqBEpCvChsEcs5w
	 cjo/6cKl8jNVAqnmfrPklDZKzxmjTRN3jisWmHYSUq7Tt6baqBvnCFRNk92tzWi70I
	 Gs3cGVn4r5KMrH9emwERxRDojXAnqGWkuuazl2JlTOojeg/O85JWOpg/ZXTiBB01da
	 IcjUlbrrP7Mkmuvz1KIFy5DUu9LKMqTXfMGxlTvr11/VCjiz8AAkBrx4hEXxAzjfHA
	 hquFWKyB0BUiqTCsz8cRG/NFQ13FMF4QADxxwLKkpZe1IKf0dDR66SOqywGBxzKsPZ
	 TxqeVR5Udp3Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A51C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533605332.15133.16433270088519099987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51f1403848326a2d66a2315f54b48c24cd25581adc9031a85d0d000ce7522bb
Date: Sun, 09 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665336053
