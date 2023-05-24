Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356BE60862
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 19:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6775C433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 19:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684958105;
	bh=JQiSRx7HzZrxfKImoHYjQKozIov2l/HfgzkrkTul5xY=;
	h=To:Subject:From:Date:From;
	b=Ksto9UjJB1eKyvr+Wp+BgYkTpz8qr9ZUTyzhHTL82hCI86b19Gi3K9kRF0/7bwk1t
	 1gc+kY09OuY/4Tu+3cflAMwqPi75oawl0NaF4qcID2tBaAyGZONR37a7hkm5qo3G8O
	 KpSnuqcoVk2l9DfnLf+TptBS2cE7scX1chaZDcOSsMpcTkH0Gkk4+jOVXo0eQ6k+qX
	 aDJNyPgafdR8oL3SdtNgkAZTnvA3JTqT8x0ybtL3Uj+RWL1PFgF7+HLgwUIa1vaRh+
	 nle0JWOq3IN3kf08AKp0osHYtSOjZT8JrLH1w6dF73CKP5EjT7Ag56PawOND3uLSGe
	 U782hNsE8rCcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B943EC77B73
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 19:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168495810574.14928.3356714374520633740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3cb20a42d18fff3e8fe87eb855ba0118b110ae214e14b07928fda99ba967a3
Date: Wed, 24 May 2023 19:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684958105
