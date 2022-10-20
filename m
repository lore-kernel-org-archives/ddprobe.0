Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBB37B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7114DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666301453;
	bh=DRxv5DM71rxSLVlfmJMVv1XQruV1DugdwbAu/jP8mbE=;
	h=To:Subject:From:Date:From;
	b=GOlm3JuqN6EYpJVn1HYf7kOUGvIBXg0ti4YJaqie7ouO1TTnLVIBa1kapYwpGWPw3
	 OAKiA51GjFTkjsFz54gq7h1LP27BByjFdzvKGxt3/7B9XhbF8vQsp8TV30RRe1yADV
	 vA1SSVkhh833zgqE86D/Qq7Auf5NMQvrNh6EcmwfbVoadt6w3f78d1K9twLuyALL4L
	 FEXT4wmgt3s0lr1ppQU1vAyxG/zaGvhUH0bmw12zBcrqIAQlHB9xTptJ4SUwb4+ePJ
	 /hxoquCEekZuorPG/6mRHXqjteqbwVdAlsf74pGorxyHNS01ANyG66PVtIV+MgW4Jx
	 Azcsyv0cI5LAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542CFC433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166630145333.8334.9717552365867434708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d9f6171ff4005e07946e18d1f811a7ebae4703c51b4a10a77d27b89c5ded2a
Date: Thu, 20 Oct 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666301453
