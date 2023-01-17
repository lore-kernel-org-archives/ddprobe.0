Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC761851
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 803D4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673924487;
	bh=yW2Of8xDX4S70q6v6vkfwKW/69LIVgyXMWsM4Fk/yfQ=;
	h=To:Subject:From:Date:From;
	b=Qjjr0EiR/omt41UuI/TP5dXbRwDP8lYYy6jHHC0g7Vp/XsM8NpmDwc2WKBZpkBgBn
	 qkMeXTJ4u22C+OP7ceg9etSmN2Rs9aaFklKkt5q+riv4qL/GxK2Pkvgq9at9rP8Mpx
	 OSbPx5Js70zTksR3e6WhsHITAEHhCsXgNkH4e3C91Xp22279xUFPP9fN3jdMPqQyNf
	 yQCVCwBTVVR3MJaMJnZqmX87c/OeyfOWlPUGlLnDN2RpC4FXWAF/rvZxTymOtt1Pbe
	 8r1R0p3MzpH/a2CkSbWMHPAvPBdY+PW5lyXgLlkcmYKrSZS8a2DoAKeWxJJYS/47xJ
	 klLMH8lLtc83A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642FFC46467
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167392448740.15493.11175926999876873290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232af38cd064da85bc8a0927eba69bc654f5ea2635c2681a712732e952297d53
Date: Tue, 17 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673924487
