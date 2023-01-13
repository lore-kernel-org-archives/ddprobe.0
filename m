Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84217EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9247DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673628087;
	bh=xX6QNGr6U4QFt/IS/VOfPsdvFToz9OrNk9pbKgAGQxI=;
	h=To:Subject:From:Date:From;
	b=cnXv3LCWp5t+j0Z7j0OSV3EdqzvvisNoJypouVAp8qm591V/4keFYz1PXWmRAwxNK
	 wV9yJOBM/XQdltZ54EiaH4gW8LBbouxCT8WLFNcJMuvG4cfTzmamBivFKZMv+2a+HX
	 /GyipPeO7xsPMFqbCfUqcSXO3w6LJ/RvG4kboTY/1JETGR9RUlcdhNtRh0I2tTt8in
	 RsQIOOgXiJFDrpLtk8Wwi/MZMrDEy3E0tTe8Xosvrfvl/N72n3daA0Jl/Qw0fgktW7
	 UXIGjAR17+XmnoRnPbTxT+wO2sgh+ApQPdCBxCHjN5WsBHtkTFmyi1a8sae1S+L8QZ
	 +YnsKg9+BUe5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B2F1C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362808742.1611.6272639290021110249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f86766bef9a8c552fb80dba1935410e89dac4806e66f1599d4a3153004552775
Date: Fri, 13 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673628087
