Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6669F2568
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 17:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C31C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 17:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694366048;
	bh=RWLlKBZ52XEeHXJiYANqSwE+4vGYdB7CfamK52sNFqM=;
	h=To:Subject:From:Date:From;
	b=I/jFaOpaCcune8xAoMSduBMcSISh8HLMgHbzpPln8bv7Jy3+Bv2k4ztiIHsIKoM4Z
	 sUb0OYVaztqU3lvT4aTCTlz5/2EYbrVBMRMlx3fkgy5ZNb8gCkeLknSkZGmvUVZItY
	 8c5KKg/aPbGGXr/aLnYQLSrR17gxsIEPfCpYx+ntfVeNc/VR8KQvWr8atvBFC5zhiX
	 zdY/Hvc7hIsq+G82SQEWk1VppXkELjvK5ISatdaeev3cueDinrS2zlF+aNOap6DzPk
	 YogXp+vGDakptQ3xp+O6gTQvPCFekMioT/quRhiqXeXcpIWraZuiHUDbtAuA1kNEoq
	 9+cfTfVFOkLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5DA1C71153
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 17:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169436604869.9054.13778159101676128570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f2bf534e2f1f45f9f957af74367561a4f412a0a6638a51b61e339d603fb3c4
Date: Sun, 10 Sep 2023 17:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694366048
