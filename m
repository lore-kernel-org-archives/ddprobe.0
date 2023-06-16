Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5117019E69
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 17:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6790C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 17:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686937748;
	bh=cj8Ff4YVrx298FPMShkTUMzJEzzITbDnmePAJ3mjqX8=;
	h=To:Subject:From:Date:From;
	b=SIlH2dXP777T7zDyaqDBgpy6FO/j5Jio1v3RuslfaslJcCDppqbPshzPiyBiR7xgm
	 D9PrfI/Mf9TyZsp5JOT2nhbuhtT15yoVDTTTC6QcuwDkuL45OW64xCsenHKgQetgUS
	 CcsIojov4K5fF2FL2sIwebifhPCdjAuvCjK1UTBMVmxm6VEOTmH57Mlj+Y09uEUSFG
	 VlXXPda36+ZQ/WZFw4t9ZLoSVV3I6jhIkLB7pRpr2Z70F8g2tOtn/A4dHa+xJ+Aqss
	 bM+fbjVeCxZGBIF2UT/ybBG6GQF5rWqeKMmp0pEk9DrmhDnjMt8QHrsGVYths+J+qB
	 e1zGjg/4Yn57g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A993CEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 17:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168693774868.32084.6938825289192377028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430191b1f89ef731691b88d90082d3095b245ae70e56a1da75190a09ba274758
Date: Fri, 16 Jun 2023 17:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686937748
