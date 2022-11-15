Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E87C421
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1AAC433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668555654;
	bh=B9VY0S5vHUXRVzEYnwj54ZlmRxbJRfdzZL5tHFSxSvQ=;
	h=To:Subject:From:Date:From;
	b=ruUYp5wFiLcxLqDYM+sQOxxIwl1XdEa41c9epfO4PDAZlYw1A5H9RAyVKP0q0Fg5g
	 90yiLzFH6kphLin/GqoKRjGFctVIOD/rZCN+AUrbMotfc9pdXupyqCINCuqm9U4dNP
	 BwVI7C5BVyGz5/JiAMZoesg8Tk5GB8JTvGuxP1dEPowE+x6YceirWUdR/EvTkNikaP
	 Q5W2mt1x4hDUE1MR14pAv3PJCb5Z3Kev5sua0Ctl1FdHMRdJmEAtrOg4lbncihB5rB
	 u0Xj8PfZDc6CG+CURtbBfeXtgdEMB+fK8yDI8kGAcGaLNqT76SQ22tQ9llY7pGip5b
	 LtLVgAjGvnH2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A76C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166855565433.4232.5842840662508402350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: febd78c44f3ac0719a5e6193ddbbe53e6b0f683353de98d76a5341772e12c8c0
Date: Tue, 15 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668555654
