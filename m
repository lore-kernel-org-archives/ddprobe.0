Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD23712290
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67D38C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668637254;
	bh=Q0NgWl1PBo4hfvJ2KgFftQlcy5kcpvR6jsrp0vSuVWk=;
	h=To:Subject:From:Date:From;
	b=kPEOkIbhv89nCm84ZjWnT9Tm53/jwPzy+zzyZsS/OlbTYA1zJMShKDxzH3pre288x
	 Xk8+krnkzYBc0DbY31BRmxP7BEl/HrkSQlCLIHC/9Yyb6aloeBjta981jniydn+PH5
	 /Ca+H8eh2tG95lyCxdSBSdT9dIaXf+h2Y3ENEr6vK2BIL1kMSeRjhtxtVlv/8nFB4u
	 QPvsBByC+siX03wtAujbk3ozmkOXPfXDCJZJKgkNwolg0wKM1rAerTNxXP3sdGHbag
	 aBcW9pLI07TOGBf1MenIvurWMG2b0hlWtuV7XAij5jVLVFc2fdyhX5nqlEBuywSf3p
	 XLNYfVGzvT/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52211C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166863725432.32619.1840580340051660924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc1d3ad22ca9f080c895529301c6c7d9c67ba16ad83d09b7908738e6b3b0625
Date: Wed, 16 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668637254
