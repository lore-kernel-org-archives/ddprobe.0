Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1345F7E0
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98AFCC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670653887;
	bh=agbrchJsSlNrjTBgFxAE7RZtNQwhU/XC6KcVtjjNAr0=;
	h=To:Subject:From:Date:From;
	b=N3LnLcs+P6LGQmhxr2LDAZi8ETcq3Z8rC+cI3hHSfmkfpH43yyCNTqt8jusj0/PQZ
	 tpnO2lpoiDO71vF7M6qeq68iZrhvv1ALUtxDfuXNSlSbdvYzglCukfJEmB2m5tQD3D
	 3YByJbcFmudkBKf45hI4QOQVA05nTsPTPzi0bfjT4mElq/u/MFVYtFTWzFHCfkrA3N
	 Chwv4eMKAv3vrlbPrIjwfSTju3cLWipbTRk3n4BHwl/q/ossD69yQ/LHPRyP/os9+m
	 SNMhAz+/5r0KDdy4Fpp2sRT0LsKXl4FnDa2Lwt/ZiNZcHX3LNfJQNutUgfAxjIZntP
	 5pMEkrFI3uUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D2C2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065388743.13289.5708849551861574643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f542242c8b085727eb3755b494cd32b022baf6d159fc471acb371849f7c494
Date: Sat, 10 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670653887
