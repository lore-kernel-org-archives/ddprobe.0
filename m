Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02FD6FD1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69435C433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669126254;
	bh=1KSryB7w4OqaTzAkLQ7+5dikgXlmbRQ1KioyPALGLso=;
	h=To:Subject:From:Date:From;
	b=rMSr69Ht/zHPNGPnlB9lmpygE15dkFAvtCFchtiOmGG8gfiY3oMC/Jey+vjESvoU9
	 Uy0Ri7nGTWVOwx5AUxDjm77KMwmzI/8dfXbrbvqrTk6jA2qCBzcZ3srPQu5KlnuxEe
	 4ckqCl1+NfCF/7bgy2rOaMHg7+A90RU6Wgw3I3tZ8ehsl1NiofOFH+bETGxlMUVJRl
	 BOpRPxVqQPsQb17iwJwQ+EhsCmRdqtbaMRaOh0VeyEUemjuGs7p7Y57YGs7udPvWsm
	 uF5m0qxL4cRETUst2+4jZvXwUf0EpcZr0IMP5fsXHl9Ey5VwXDsZaTAwgHjTe9WW89
	 XJdWV/xtrdqrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFF1C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166912625431.7298.3238864978698313542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6672d6b49954c44886174fe7ca82d58ee3884782ec84d98dd9e14d2a21f5a5d9
Date: Tue, 22 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669126254
