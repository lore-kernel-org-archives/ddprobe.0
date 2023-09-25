Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A5A7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 00:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB26C433C9
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 00:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695600308;
	bh=geMmxfEA+nMZsHWMUVN8seBoZPyIL48t80eR+zu0Ib0=;
	h=To:Subject:From:Date:From;
	b=YUAv69QIq84uOSAG4Rxmk9t5iB/R0RLX8tfMMHjEUJ4yNGoQnb8EtyuEqol+bklQC
	 1M4nzAxj2Dsj7lcVEfDLmA1ePG+OskEn4tPBZit4nDWm3ovd7s1ItDyM3Yl7LJSfpP
	 BTOIrsSQHkg5kj1gCuJEUEVOlCan8y8A9IwTygczkvv0aV3fqfF0+Ua6sejEb2QaWk
	 eI2LxkiHPgDuNPnHK4GY3a5gfAnXY0n4B51fIoa/74Wq3BMlUqETCHfES6nLVBAKE6
	 NXB7e3uRkYDIq+lRxg/Tf8vqOs0GyRdiFR1HmazD9KTIx60DiGrHvK0/tIbr1S8xAB
	 EYkeenJodky3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05BCCE7A91
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 00:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169560030875.3423.6445851118678429582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c62b51e5bad890d59336428bb83c578e727eae35ee78a9645b6f3957f6fd03f
Date: Mon, 25 Sep 2023 00:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695600308
