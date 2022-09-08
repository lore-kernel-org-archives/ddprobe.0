Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CC16126
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B0FFC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662679853;
	bh=zPuC11jKaOohxv0DzoeBMIduJoGnYCQxSXa2T4PBqRA=;
	h=To:Subject:From:Date:From;
	b=hNcR02GY1YoF+5ybeEZHDTLqC7oxlUuq9LgGK60ES8qYfr1aand+53uaCb+y53Kek
	 0qZkV8tvwCA4wknBYoWCsc6NTa+3833h7cic3khP6SIUrerEobq4mfHKo1o0Xee4Mh
	 Nf2sq+ShVsxjzZLwTR8a6EApTaTv/SAeUc6L2DR2sPt+hE/f936fhvWg1vPtm+SO6b
	 BcNgalMwRl823ProoMPlDZZpDBiO50rHzX40u15IBuTTHD3a1JBwQe/R1neaPHP3No
	 AFC5uO4sGm7FgYLOg3RSTKt2b/JbCTfd8EAZ3NAiZvplWWYL8VSbQrpUX35BIl6RLZ
	 6B831fGIJzQ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53053C54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166267985333.24972.15759660741362402470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd72dff8c2d9ae1d75f98daff08cf0a0b9ccdd0574e9306558ddd73e3d188e2
Date: Thu, 08 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662679853
