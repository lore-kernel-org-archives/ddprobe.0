Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B864A7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D324C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662511253;
	bh=P1bX58e8I4d3hxnlnViN/Mty0G1QOpjMJ6H/flaDLvQ=;
	h=To:Subject:From:Date:From;
	b=dC1Ew9KTDghh0Ehbf5VSxWqIJngvoMEH0d8Z6q42BjewSRH8jI+Ww3CsuByFtmPbZ
	 qzEtET1fj/1R8kZelVo4sZ9+0NbFt52z0ug/5VHyBidcOdjTCVOk2IiyGBmgJNgsou
	 R/aOyQiWL+4AhdfVJi8xkEvzWJ0f0rXU/5r28pVKAuprXOFX6lAX3eEOuVmMYMPvSF
	 qdiZ7za24RRCUSyr04kL/DcGMFoFcjMv1twSMj1OOeyuznuWH4xIUGh0Qn7U4IGdrB
	 d868ETzXn4FLvQetm56/Sfnh/uPC3DtTRVtsb9DtTplhKX25qKhSbLLBv39e7smf5Q
	 4mvyTLOoPzjHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512C1C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166251125332.30352.16861246066297824992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400e406c6de0f57caac5f6e0cf872d16f680f4ce36f2406cce3c6260951538bf
Date: Wed, 07 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662511253
