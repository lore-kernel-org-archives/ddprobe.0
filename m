Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B652720F8
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 697A9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665753053;
	bh=TFRr1XeBCcOqnt64m/enlHFJyMecZOh7NuLktsfoqP4=;
	h=To:Subject:From:Date:From;
	b=CtKJlmYOjupogw6XNrN2WBaEfhw31joRTao7eac4f53/gUAp1Ld7h1b/VeAeITOwn
	 pvQHl8anqw0G/U81RDSlWxinXMbboHG707SxnkCh7xD696KxIVoUkgvOqOpZsDX4i7
	 YAbdG630piHkvBMOwoSvYxNpF5pLWyCheaTmJ+1GVihINUIBKG5Ms259jhEqzye5bR
	 W5D4i5sVP8uY4rvo8FtU8ZL4RwpxQ7iI8gF0fVG+vqXku1H3hdkEyMm17mqIWBL/yJ
	 Sc4QdhIzd4a9K+JL5cbCLTx7/7LC+zqexTx17BCV0D3Q7XeHLSC4+oxWDJlDNih83Q
	 +NmrgTyaujakA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520E1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575305332.28428.14851268672331911716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e5f6ff3d6bcb69d1f04e64c3eee49be70edc74e3a07510c820af6e45bb3a18
Date: Fri, 14 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665753053
