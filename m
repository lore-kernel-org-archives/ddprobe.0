Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC89829B2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E9A0C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667997054;
	bh=lX/OsQbBydplXBYvWHgGhYmMghdWlz/sn1Wo9rAzA6s=;
	h=To:Subject:From:Date:From;
	b=jyzm1SHZyPWsdX3e540MAmLbu74ECnJBG0Qp5MLCsXe1MsmuVTPVkAkzKL6JUFNym
	 N4TnDLVfVraxjujWjbTqWHqTHiEZw8jGw6sLllrIZjYUO5En+OUSMyEDPFhto5mbuK
	 +gsfcbqez7ZdfnJkV4A1COE394EYHSHuPbICdEoKqktGNoU34PpzIXRWGX1PH+4pLa
	 cTKe8Ggf2u/ohcSzCZZmXBip9BcNxrTHwkStwWUkkreeDlp//X6Bt2r1CVTVm4J/Pt
	 nHMgJJUTe8QS3Di8pzkb7yf7GPhL+sZSwKfxfVgjBtgqBZ3ynL7lIMO1ru6SiBGluf
	 kEMbCUtI492OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D03C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166799705434.4724.2359234024168536609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c6c471ef3984284ffd3f8449a2cdbb9f752086e4c7e698ab64d53ab2aed5a4
Date: Wed, 09 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667997054
