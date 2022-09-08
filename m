Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B9E7C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D387C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662604853;
	bh=a9b5VZozCXhZ+c03+Y2Py9urdv26nSagYlOanVNtJJo=;
	h=To:Subject:From:Date:From;
	b=o7bhvqHssu42qTo/LWjgCaBWeBot2spb3r/KA3nX08P2KvF/Q5Zv3+iP0K75ZCWUu
	 UR1bIGMDs476el5EQpZf9T3FmGA1XGjEn+43OzbReOZCrsjL6fkH9OG1f/qxKeicOu
	 odZL2o6nWpijYBPGaDtqr6jkBhqnd9lOCn0kmpwEEy7c0R8yTtxcQFY/zTGivdkaBD
	 WA3LM8dR62v6o1FRNzTwhVDjOQRUeO1dWrRrxyxEVa3ZBV6ph20MTR8QSQnAMbu0C2
	 B0IJcj//mhe4hVizKnGCMPiA9krpWB3jSuZL4xZrF2vDinUu4rbXm4H5NY4+/nSZ4t
	 5x5qxLBCRhbww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538ADC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166260485333.14226.9603319344792057927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307ee542ba56c408177c94127eecfd580452e8638d8fd10fa5129b2f5b9d5521
Date: Thu, 08 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662604853
