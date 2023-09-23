Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A8433C0
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 07:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2898C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 07:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695453908;
	bh=EsD+sX/OPCYA6l3DkQ8XQj3eU95Rmu2BjSmSWCElxN0=;
	h=To:Subject:From:Date:From;
	b=AcpoxNoaLlPSz2wQM9lgA3aC1+72dSxYmtYlrvmVdBUXCODtOvU2x0JtdkkseDVdP
	 kniqV/3HP+8TxvshhZ5JqzTMpigUEiYhJ1PsyV4N2kkuRbRbkVyC4mWOAT6D9XCQmn
	 dRGzgFXgBIQaE/uAJyGnplpS785DP01EbkQJ7VssbRArmvmnlYDyoZsJkfkfHS+RNP
	 w8odIbfCdlZ25vA8Ett6g/BlDkI9daI6NbEoff8JtYdYnIGXV6rSk7f/QgnftvyOS1
	 z+tx12yn3jlSoYrcyrLIeKZvAESVlxGYgSRZncarlsB5Kl60s7e9lrY12uP9If7PJ+
	 MS8y0Dr41Yb6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E87CE7A88
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 07:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169545390868.3429.14734951509906727880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a47e48d11e0a1fb81250e7b809b80c2e067d4e3864a1af9b54c7e6dbbd1a48e
Date: Sat, 23 Sep 2023 07:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695453908
