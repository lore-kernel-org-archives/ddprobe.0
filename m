Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD55A361
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 756AAC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662684653;
	bh=u/Kw/LlbBOvtuF6B+Mao5g707Bp/Msz2RJ7685EmerU=;
	h=To:Subject:From:Date:From;
	b=u5LLzbEMgmsJqllRKrHEbtpcOXcR5hjxu45Qf9leNkfgSA+psFTVHQ5kqyE4vVZnV
	 v8948v0M9Kc+hZsAM3Z2seOrcu00dPPRtQsWnOGwXbyB1xTgmTf9kqPmE9f1p9hoDS
	 CveisNH+TeT32fW8bhpjqOCUrv8vtIIwFI+JiCS1RNTCKjHXzJyZ9mPHLxIc9s/hRC
	 aNlMTuhkRG/aygBXCwmga7hQ02D+jr+L1Pu6U3wjBupLY0T575awrJAGgD0JgtdMdZ
	 9yJVRuxc3FNGrJQzBJ/s0dSqsk9HmEBPaYx1rQ+MhwdmzEBIY/cbMWtsKz+gcsWRvu
	 uiogdBSxgDw+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58101C54EE9
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166268465335.14237.16671836713009919028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41518e0e7e2ccdde76f07e628f79102a3d95232261840cf7ebec8ff74a8dc9e0
Date: Fri, 09 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662684653
