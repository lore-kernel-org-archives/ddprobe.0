Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E7B7F
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F6AC433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675502765;
	bh=wKkycih+/swcBPmfI/XcYBJGuAFTwwEXp15JsAyL5WE=;
	h=To:Subject:From:Date:From;
	b=DbfgueLHGWiCBFs5c9V4FvBMFGbZozTMOrveJkejD5G3vMrXUCc6kI4DKpzs+XQ9b
	 aCuogSNljJh+f+2l0bPbJrK5Js3P4vKC5Exks6yAd28PCiI4duuMkr7sLpubbbCSs3
	 W1hgFVbCJoejQ1fHiZT1ult2I9pD4kCy7Ykwz4aFnyccjCGNoUChBJaI4mqls2kGJ3
	 JdyEp0O84/FiLd++M0wGtUKkQ1z9RipMO1oVkkQgO9Ex15Eqp01NoAuvjzFdWjL6sC
	 VfBgZQkEpqbNDKEGsXLb1xxZhUghWGaumslp6G4giWcSkQ5wQL0NVCQHjT7QMduh0S
	 qQULx4Wgb3tiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2ABC61DA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 09:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167550276576.19592.17890676148462864740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bcd051ce5c13bcdeec3ad95d1cb97743a0c86d1c1b4c72600724870b039a06
Date: Sat, 04 Feb 2023 09:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675502765
