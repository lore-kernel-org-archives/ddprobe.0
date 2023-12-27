Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE9D45026
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUpiQ8wS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A0EBC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703687296;
	bh=NkkF/dZJrj7rqEiE3EYO2YpNWWt3Qmb1iIsOigIy16A=;
	h=To:Subject:From:Date:From;
	b=TUpiQ8wSuPotJ7pzjmockRjhabc4rFG80F4bwJe0pmGL9OvDyv7g+FP9iPxnv0yda
	 4oL6KHPX8oejX0358uXPP11i1H19Ttc4+3JxrJ4gu0f8X9QNMMfDFCfnQLZsqBzd6z
	 Y8BsmBCzb4iOchp2HXWHYN+7eIwSivJZWqj5ix6y8EDYMRGOOIPCh6rNa/t887CVNe
	 tq6xorDHHsNut6pRRwB03nqHShdhGSPad7Iy8bFVpH1oCyRneOH1rsgYZ+MlBaJ/zk
	 XY6PSDSsnFEmErSgNgIW0R5feeU0DvAZrt9rQ1b+wOuAh5tGFlKgs4yHa/z+C/V8ax
	 bVFNe/2erzMXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB55C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170368729641.9517.6958756996451055794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1faee001e076d92632847f008d94625a4bd8482786bb032ae899b5c1d09e7296
Date: Wed, 27 Dec 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703687296
