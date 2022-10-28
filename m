Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7E21C17
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702AEC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666929054;
	bh=bSPgJ+BMtBP0mBSmcWDf2y9LgOUHj6BwHSycVsTNUYc=;
	h=To:Subject:From:Date:From;
	b=gWiBcjG10TIazt60Wem7ln1nfc5kx4BrHbZit2/ALRIGOqLeSjEjNkBsptozFm7BM
	 d1ZLFBKty05qxuD2lg7jqPT4M9AkEUgWAfAJ/7jO2Do2N6WqbckL7RHvMCCzMNpn7m
	 tI2sOCVchm36eImb2IFenVoXKxEkrHidM7K2GYv4JhMEOuR4TJCJzL0qJ7EN3Bxzch
	 IxjBjR9MDYTH1D7dCNEy8M7uE10q2epNMQbbET1vKTSBu6Jpy1SXdpQ4v2/TyknnEA
	 mjYC+joJEmxatjYntes+jUBayYtZt+T4IL8HfbbmZdWyLoSycqXdz3plx1VesZKWH0
	 fpGVOrxjnybsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57028C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692905434.32591.16043457335406865874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6dbf631cfd14a118c406b9bf671eabefeeb91d84e83930dbdd6741eb93f1f4
Date: Fri, 28 Oct 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666929054
