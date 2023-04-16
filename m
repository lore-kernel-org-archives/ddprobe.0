Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F571C11
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 13:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E213FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 13:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681651565;
	bh=GzYmooIfpoDnQzKFc9f/tIq2cv/m0FjxR07vcu6VyH0=;
	h=To:Subject:From:Date:From;
	b=HJXAu925hacZwUop2AHUgIDUI6QuPBzy2oMAveihpnDO6bB1YZWE2gvlQnPemESsz
	 7LgSVlZwuqckZLPjjlseI9Ge7U4goDNW+D5KFExNGVCzmvFL1EiI9ier6aUsNuRvqU
	 Oess9LwgyaoigbIyAsi4w+l5sT8R3WK3LweEb+n0MNnF03gjT4poYQVGLvP+J2RNOq
	 vGuJemFOKif6Ij0x5qWDA0T2Dyoe7h1NLwooq8IcG9fUOHECIhcwolcZxNideJUblq
	 rvjOG78kPmfzmGS4Fu9c43hgmmde3h41lgv9aGyS/E/BzzgGa0MtymLQxe4bl89sKy
	 phy+kQpAgBx/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD027C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 13:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168165156576.30457.6023674933901391205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1b67aa466b4e98e0eeabdff9e4636c5db6989b89158abd1f401d76f5e73549
Date: Sun, 16 Apr 2023 13:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681651565
