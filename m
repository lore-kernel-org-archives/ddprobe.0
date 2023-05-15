Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E723D82
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 05:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00AE1C433D2
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 05:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684130346;
	bh=qV/QxcWUf3mZ7cTi2exNyXHHmcUbpaFCxAiPB6z2FgU=;
	h=To:Subject:From:Date:From;
	b=Yv6pxSHKU6d0p3Gsi1BH7p1aI/Q8i0rhu8OEdmi2LPrsEO6jltCOgCuq0tCNM7dI0
	 sekqXyD2j6NH+WLSfsOccFCQg++bIuJl/RDt9jBGkZ7MJ7/b5rL6wKHIm0K9XP21ph
	 ICeLLYxyof0dPYJmrNDWNL2K+N1UzQrnJHTMl71iCIxPMXN80D+dhxFWPIeE5uEF4I
	 /8Dt9cfNlAB2NeUp6KE/Q5CfnPoDNI6HSpRVWJDUB0rGGLyjENP8RIBualqaDezYX+
	 weWiK+KO+mXOKsveww6gM7YKJUi3It/GNsFgVoWzfTz6Jhyg90SnCfy2fJ9kXEQqMr
	 ji4AuiHZdmRLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2606C77B75
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 05:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168413034584.1740.3183198535140021802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948e8ba090454ffbe59f8191d849372fa140bd7fb65af214329eba12c9674588
Date: Mon, 15 May 2023 05:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684130345
