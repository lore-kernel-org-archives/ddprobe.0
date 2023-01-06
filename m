Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F226E1863
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53CFC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673038887;
	bh=M41BrqpNucEtM5G6Nge7LvZii32Ef5xeV+SgMyDMnd8=;
	h=To:Subject:From:Date:From;
	b=Zd1wXOJ+7P5csm1mHlXy8ZFUfoSLXTLz5fvaLwXfkx2WMcVz3leNIcHPNIkwAJ/Ha
	 hRsQMzThLOKu9dtLePh9RM5l10Pe2I7oNb/5d5WO3B2HoCTVi972gBeviq+FOFamth
	 nXEB2uDrO+QZs+0Yub6H0yTgIn+KFRSwlvxO0JYAOE+RAC6On5GR0rRWoI2kUkoyfC
	 O/26KB3gP/fy5+UiZZ2bOSHhozD3cHrHLmRnqN9X1Xo5yca5l0Fx5GamdZUQrc17Tn
	 uyNvCj9KeAJix3DJadXdCf6YYOxfAOXKWPZWZLD4vBo5KjziQg6yc+UA9x7giVtAAt
	 EAcRBjxlhefVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82A13C54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303888751.26619.12354941969192545338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec8de61ee5130f87f466864c64378217dd9e3b43036b002d825fbc3cd25e0b5
Date: Fri, 06 Jan 2023 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673038887
