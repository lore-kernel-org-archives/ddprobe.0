Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9E810EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BD6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673837487;
	bh=rLxxVHkMqiIp7T69kjdSd+/F0Ne49a23En6rvvjAtzY=;
	h=To:Subject:From:Date:From;
	b=MCEbX2ZY5GdYWLQ8wgrxZigctYuOlZNxFCaF88ZCIyXcgRYipplLSUQex4ef5Z13y
	 jTNR52gW2YpOOjiFoEejZBLnsyooM1sCylIOvy5ihVkQ+DNDfW7ZVlWRG1mwDVUkJ/
	 qqNzXF8u85tIoW4b7J9vOUHgD7e8dvlmrhxoakXofbLQ1RIIVUKOUmNfRNJ6IdrQPz
	 7wo1L0CYi8Q7itlrBOTgeM0iiHlRSmxPfjaeAPhb261ADzdSdQDm8B3Hvb49f/zj3o
	 SVF4ex5fkXWdgs861KM0RjsRrgH5Vu3NF7c8mrOasGR+/bmd9j988c7S9mtEHIoANI
	 ZGfMlkAZ8Zgzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 661C8C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167383748740.23586.14445443343041612317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b96b1f6a3a79bbeaa253400489e38945fea0f5b1401b77a80c673168a57631c
Date: Mon, 16 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673837487
