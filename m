Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4EB122B4
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 740F0C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666994454;
	bh=LiLM+wKIRaUALyaIlKi5DeeKEB0DRLByvn7hRG7tTrI=;
	h=To:Subject:From:Date:From;
	b=sAfWZ/QESIOrxDkz68nnueqEVfCKMsJcLf/KKPsY4z09DpXw3HvFUHLBssbCu4ski
	 8DgImSRxL/R5iK0Um3eDWY31LV3qUR22MnitrGp86MqgRLxv345OLmYGrNB1RuuTxK
	 QYwgSSVQ9pMh4N2kn9Z1qScB214vsip3DWFqKTrlYdiyJ2ebB8GfkD8p8yGTUsuUL6
	 qhE3zgizsfkAdGbYHxL3wKdwNK9gKfSmTkT4Vm5V0KRGRmxhdrhMx/calXttTxKGsX
	 MqnYFwXKMW3EkU3pOWIEohM6liuf4YVCiukr5qBwJVKkiScQq3Gdcoo/RpT2Y/VWVe
	 T10LbsQiEKz+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567D5ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699445433.22515.13524296957947868593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56b2b012296d7195c843731a0fc7d2e48cd1a7002dfee59931b80a18d3d4dcb
Date: Fri, 28 Oct 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666994454
