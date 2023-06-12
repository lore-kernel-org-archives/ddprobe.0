Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0666921CE1
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 18:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 206EFC4339B
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 18:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686594306;
	bh=tV469A6P6YPn/93aAgTAtT3fp3eP/gAwIyfxwnuaOKA=;
	h=To:Subject:From:Date:From;
	b=EO1lfcM4Kfy87IPsrchb+n+wJ/GxmBOFkkdctzfDypHn/W8RjM/W+gmcva03RFzhG
	 KtCb28cGW2TAo6xpBG7+RFaW/x3Jb88IShtxlcskxvPAk6Ga+8nc1yRwti5X9giLEF
	 0uS5HC1UY3fOUPObh75usiYA1MAKvBXksT0w3gqGzTIBt+NSGCCoGrteOii9G+l6AN
	 mz1cu+xWgTsP5aeZ6u5wbkHY2G8Wog0mKDUgT8mRoRpmfX+cO1BaK3i7J06uqOu76E
	 SzPUlBNHpoT0UH0vxBmoo8iFTBrfFkD5/R62hExeTBOqdqJIHKnQjchi7EUI18qtxl
	 vCeJMT1Mt3H6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1644C7EE2F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 18:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168659430591.21713.2253994442544554425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd740e612119b4eb6b2c0d13c4c21f2280a3cc22b2f0e1cbd7b57d599bc6085
Date: Mon, 12 Jun 2023 18:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686594305
