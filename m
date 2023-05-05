Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2601376
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 03:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE88BC433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 03:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683256565;
	bh=2Vw1oE4zJPyfwqYxQx1Waspo7tkmvIDqyz/x1ZMbM6g=;
	h=To:Subject:From:Date:From;
	b=b2Vhqv7F0mOwea8rjw/1KbeBRHNdMNg03VzG2GaeyNSNAIgCGWqPk4HXSJ2rnC5Cs
	 mYGoDYRkPgf0B2etFIBcSKkSKbsi3nXP1OWtiubHC4PCwvVkEWXwJ3g8w0vJPMU+eK
	 rdZWhgwySu6WskOvxe9jMD4Jyl3RtyO26AFum7s/LLsixkwJ9zBa1DjVCraqOJtaVa
	 zX5ml1fpcem2wXzrxDPMMo86vjJr6jjFB8eC1GJ4H9Sr2z6IZK1jZhXRrZD4uGKQ3E
	 bg8WkS2i4c6sgVxN/sv3sEx36HpzMAX1dGxW2XTXy/jX0U1jGEjXH0YObYUQJbMC10
	 w5ZQPbMVRhyDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03F6C7EE21
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 03:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168325656575.27087.10773613929812534771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d7e29fea54cb449a569900350d6b7ae495efaf7ec50cedfaf587827f660b657
Date: Fri, 05 May 2023 03:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683256565
