Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A5FA479
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D3BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671811887;
	bh=rC7w36ex8ctkadEIT9VMxLrZkL0RDIufY40EouDD690=;
	h=To:Subject:From:Date:From;
	b=dTEK1/JiINsysn77VKWRl10B1SVcTr4Sq400IRvi4WcN4Gnra1HwpZFPNIL6SS0K0
	 epKV90t8k4F03GC7G5/AVmVZcTxNe4Y8llT/QaWe0lsi1ABemeErS4foahTgKgkCBf
	 BC/Pyhqg6YLKjV7J91dgRmuPnAwDxtycl3OxFY22AIkM4tsbxSs1rJh4io7tAafsR+
	 7oqdHGA4mLvORwGEjzuNPxb6mRuQSAh1+koyh4hjklbklWqzsqCTS8i9nhd0syOjV0
	 tscybKcE4cyftAjt9MO5a2APd+9r87fSrcE2YQBYskYtCNtR9+RhzIZCaUr4GmjSoX
	 vQ5KFLKVVAP3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65893C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181188740.25309.18348791870866194288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73fdf3d5cb1d6ecaca623bac472d51c696fa400023ac429e6c8fd4dc85051059
Date: Fri, 23 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671811887
