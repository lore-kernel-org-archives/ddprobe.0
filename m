Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE0E1BE75
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 20:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBFDC433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 20:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689883928;
	bh=zx5MM7wAQSB8sqY/0ccUGRMutcwN67N4sEYhJ5oF2DI=;
	h=To:Subject:From:Date:From;
	b=rcNWlD0ovrDDoEXismTFk8bg1/vkTaF9dkmAzokV8L8BZWeAdaekANrqnEhIcZ39B
	 1uSm4gpQmlkSGcwLPaA1bE+h3Y+r4W4jhgvEsp+z8z/ECQKBow+IzwDwOO9l+ht3cm
	 7n35bIJuLf6Dq1dEdyCO3ekzRUp7rNCb+3b8islJsqbJKGnLe522kM/F1J62rfy9TO
	 N8eexQ2E/Ua0dWYkFewUiHy0jlvlBhNm8waCoN41mpB5HvrYuFIxuRykY2HXLqnb5I
	 xRMgaVOUMG3Oq9UoWpk/VLhIuoP47tSNz/8+yy5Jt5Qzumyif8AtIhPmGdLecOvAop
	 VPKfsf4yGk1TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB43DEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 20:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168988392869.25867.4725682310549765599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73aac4439db757cc32d1cc9c83db762f3ee809f848a60c62748bfa7b00b23219
Date: Thu, 20 Jul 2023 20:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689883928
