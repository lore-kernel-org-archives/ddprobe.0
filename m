Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6435717D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 05:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3454C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688187848;
	bh=P8BVcwW64An+3judyvh+lqDtmTEtKOKyygy8XkuWg5E=;
	h=To:Subject:From:Date:From;
	b=c3XcPiXlfR/b6tNMSKSZuBPVDKiaxKvfyjY/iOaqOawHLulUcTt+quXLTLsQpkJEM
	 NibrhEL8f0qT22qEWKtNmV0wBZzhxxGaYwG/CLvvbdcV5uo2k0TUTwZAAcaJI2BJJJ
	 OVHyb6fgbAtO/r6cMbstwzTeQ1DPQQdJkr+4OYVlpttUj//2vpsMFeuZtH4pp7I3nM
	 TdNAk6kN+kaj+lMhTd6xm6/Vl8S9G5U4eW5rjQiE4r3f5r6yWqdq3zExvUtNsoNf/B
	 5cG3HSICUkPXgyNdnPGajjZjI2ItK/WS7lato88gu8cMN3D2Vxuo77LNNLipJUXkYL
	 c6Ya6kRObJeTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C48EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 05:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818784872.7902.10725606822542770848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010db889fdb036b7da510f319d8db425fd720c736739095a58e1fe4f3ee884c8
Date: Sat, 01 Jul 2023 05:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688187848
