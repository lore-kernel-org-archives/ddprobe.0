Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA731EA92
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 13:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/yr6ABD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCC0C433C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 13:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697029628;
	bh=JjHi9saMW3IkyrDPrq/Iqrq+T5MM23PxBE82U5PjVWM=;
	h=To:Subject:From:Date:From;
	b=P/yr6ABD5ox4u8fV5smZC/SQKBl18WihpedwVE06Nn3OJ18pTjxAsTFURsVGm1CiZ
	 +XHylwkXcbE65dVWWxRqJR0twLkBeBFRRdwxBAAOlRy7o4wvhpvElxavaKMi0cHpOo
	 CQG10I8ntmS6PrOjyftc3RLBcy2cW1zvtayXveNKLylnHInJTM3rbIQfN4pUf8tRlP
	 1fGd/3QE5rCRrKVy8xhsTccsinuG0iaySFUnLZhTX1sZaiWdF2Ub/YKaVcw+dsRpZy
	 JQA9crnc6sTShEdljfiNKXsdWUjuTEVgieV4kfDuw//YHA2xOghzbklrFwJwwf8I5o
	 qgV8Z2o/YqAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AC7CD6E67
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 13:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169702962866.2451.12343594079114230585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8130fbcae4e45be3dae906a2975246d8e2a3c16d4070af40307d948b78ae4f
Date: Wed, 11 Oct 2023 13:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697029628
