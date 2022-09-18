Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C534C7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6DCC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663492853;
	bh=5lm+j6ER/14D+WA5pHMa3zMXcmmvbIjS4RsJAr2GZF0=;
	h=To:Subject:From:Date:From;
	b=WLd9Csgw5PeO310T5fu4Iugxw/97nBQdjf3xQH+PmrUgaIgQ/nWsugD9rbc17sbDv
	 hfqEuFd6PPRAn1XsNPcvyLO0iqNqBp1fqm2BeojmnjaCgjzU0RfQNizZHySHBEqPSM
	 rLORqLqVjrlSRWVGsV2RbiD3aMIL2DMaLd1+2JmaQFpCl91+hV/Cgk018Hk3cQ8yOX
	 DZ5Sy54jVD40ShIDWaTF/E6kGn1LqELeEQEh7JLThbGcpj9oGXf+h+N8r87tdJZqiU
	 32gLneOmz90q0OwnLCGwur6/TFgaTDcmzV2324XgFCU2EjTA44AFRTM9IYzOMCURrE
	 antQnQJE0JfHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54181C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166349285332.25624.17117584504078917998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68720058d160320efdc615f2becae5509948bf6a806170411839b26797717b8
Date: Sun, 18 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663492853
