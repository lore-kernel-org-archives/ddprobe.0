Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78380174C3
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 21:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E46DBC433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 21:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689714668;
	bh=BeSXUCkLziOULENlasEzxUA3psvwLOREkOzkvYAtKT8=;
	h=To:Subject:From:Date:From;
	b=WByUd4BFgOyNvaOveYdjdVZVuRoeXAC5O8sfW3jIJFbQNwdBCowTU3wbZ5e6VTx6Z
	 ifZylni6aD/1gNYn+JKRSw0XIVpOcG0O/50VGiTCfvbao9iF0FUdZtkwo043lNLcqr
	 WteOnQ7rjPMhoVC2vuyy+8PTX1Av32Ds8qU7IXT95DKG7ywoSEXSbssUh9c3g1Q++x
	 d9KmGmGuJKwGctFDDSkFK5kVLbL3y7KD/3D2xKq4D7vE2vCG/eMe6AKHWdatFMaYAg
	 cYsgLJkQOXS+c1c7gG3yii6siTIbiSMCxoD/+TSERmBhLLAlUNtFqEpvNi5iHOU+gw
	 VRFcIjWqQv0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C598CEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 21:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168971466879.4097.18068812095314464861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3175e3344caa2f9da92d4875c7ac9108cdddf3cc7e5a0e437c3bf8bf7b65e418
Date: Tue, 18 Jul 2023 21:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689714668
