Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323C5361
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 01:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE797C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 01:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678153745;
	bh=FbBIh/OEz36oAjggzTg4I3NykLtMwgBEpr8JocePoLE=;
	h=To:Subject:From:Date:From;
	b=o9M8s9F8xCugdAY1rf5rxQ3LKkCBMmixfI007czhTupSKnYDuLvBgVD8JzylWsD5O
	 CEoFcfaeTRpQ2kqNqy2GRXs92N+LSkW1RjPq/4iduidEZizWdV2vaV6cJdAUwMaS0s
	 GjqbHoLtCVvnr34RypE+F2Z1OjmtNRmUsGyI27d3vQaZfuJsws6J07vF/fEv/40xi3
	 a7Dn+kDrYcmn6jr6Jolquj6fN5HZaMowvQianpn0GU2zCT2nTLk4qWrfTJ27jocKIp
	 KQ4PJbhQu6U3R28JvOiP6AxZaQ4pdVhFJM02glSmOunpSiJrYOUKA1Uet+2GwkcLWO
	 qn2jBa+O2+RDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A8FC61DA4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 01:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167815374574.10023.15363372840365577724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33f47a213232825c74f830b611028e80439154d5265934b492565ebdbe953f1
Date: Tue, 07 Mar 2023 01:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678153745
