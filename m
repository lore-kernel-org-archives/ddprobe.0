Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCFDF1FBE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC74C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667673054;
	bh=I7ztNzqTBWPu6B2aJaGjRe8piuDR4bsVGGoetr0U1FI=;
	h=To:Subject:From:Date:From;
	b=BxYCbJQ7biJKnNJ4NrkJAJtVhfchplqrrY/T8CmMnvDfIAXM0WSa1GX/lJ6jO/oCK
	 Jpcv+xGVwKMZleBUNge64MuMgX6eX9256+XsiWIdkEvdkNx+YgRlX6lGByGYjYvsVZ
	 8F/Q7+Cj5wBQ17vNL/VigW+MnnbecApdvMBkwUKrMCVP2H7RQ5ZWcxbB2W4K6UDVHE
	 QTycrJahqJgt2BCqCZAQtMHzPaW99yc5DZ9p9aeI08GaWZYcA/nNtNiS53pti9mi2H
	 +RD+RF8xbEDtDLRPhfxOi2zDEbSoVgMgeZec9myFiXG33j5orFSYl9GsAFHJe0CdrR
	 wK/OlgOkt4RmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5227CC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166767305433.23273.7134674194615541200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8bcec3e5180985b95840a322f4e13d381e55764a856489f0e9f13000cee0cc
Date: Sat, 05 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667673054
