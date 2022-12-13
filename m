Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAD717C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786A4C433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670905287;
	bh=kA4RxWPwqBpUP9/Q8w8BXYeuv0MqnAFu6VmnqNm5xAU=;
	h=To:Subject:From:Date:From;
	b=j9ewQDd+iLS13gonv24Lz+c/bB2ivGCCbvvz6oFoqjilQbDvd3JbRP/moVknwJSW1
	 G7rAsb9a8DAE8ZfOWsxcDmu2ozWT1k5Rot+k1vF17NLJ92IciPEHsIO29lt0dJRBH8
	 X2Esfq+raki+o1mhp05UyiLDqLBWCYw6qjrRmMUtvdhgGetg1igLTREO2Cla3X6lur
	 vpp2yMuaDzAiZf2NLN2uqQQRxo2hfCvGW4f/6lXaSF8cHKzPEr837IuaieGpnNcY5L
	 pTLXbOZQ4XtG7+BYilWiMsaiZPxu1pWzlXRjV77lzbe6Rt/RSrkcXet78FomcrHjLL
	 s0jXD/XW/BmCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 613B3C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090528739.31876.4321552349433859219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf2aabb52a1c409c186812c66c96007300e5893fe7149be31afa06b529064f0
Date: Tue, 13 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670905287
