Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B257B
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 04:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F12C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 04:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680842285;
	bh=LLDy2+GqHml6l1mZrQQkA0KcGT1J8hm3gxLMkuTzuVs=;
	h=To:Subject:From:Date:From;
	b=U6W5XJr4Civ5Fqn/PgqRq5qtSX0DSq+XKDRb2jm75H+C4TX9SFObglOWG/nNQ3VJA
	 OAIqSEU8m08KIdpE4OcLH2S8OC2+C0hVfZgexbrgBmbVc35yxSiyqGHlgDGL3K9/zW
	 TmQjwm+7FeR327aOs9IbmfJpp8+sbdoLWs7U4RPNGT/2oow7TIk7foTlnAb0H/F/5/
	 hBdei2YpqGnMkujD9EyjsujsmBPC6/RZ2CRqCrbQCylBXp3GVpyqptT5ulqznj4niq
	 mLoLsEuooSsaC9hnkbElT1NSB8Ycc8dl0BAqiwY0de4MpFMrMakzUwSm0vGBExybcH
	 PaJzC10XTMI8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C2EC76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 04:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168084228574.24552.2118149177919419977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac0aa46b318fc0c5fd9b65acacdd8064bd3fd9263e910864c90dbffdb91e9f2
Date: Fri, 07 Apr 2023 04:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680842285
