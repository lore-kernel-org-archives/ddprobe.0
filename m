Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544F11FD7
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 23:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB44BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 23:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682466366;
	bh=ya/KpkMRxfmCCD+fLUKX+Y18ZpMnOkVcz1K0CL9Kpps=;
	h=To:Subject:From:Date:From;
	b=p4lSznXsgCN9n5b+MuXExCFEOixAD8oFnGUiS803FCdp7PhW5M3qUK+wYr8UbKyWv
	 Jsac6HRmGpIjKTkiBcZQdhQVXGGAIXScHoxBg5FCpD5jr2ZyK7apCa0ksQcIDnu/Jg
	 rwas3Gs8B3bNWMsH7PiO8SVN7jleAKYfXcdb1Gkat9KxXPAxztCJr7OiW8IuFfoEMj
	 kUhtmCB7N9I7qi/vVre+azPM2iWGlp3hTMT8SWAE0uzWsm72PHtU8LEq+Y+j+3oCQJ
	 qjzkNA5PaSuG7Wp7gpxcvB3MhphlPcmELNfHifrdtFlyMaQHo2AyLz6Yw9jYJWV7SG
	 7i7Y6sdm+JX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F2FC77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 23:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168246636579.3536.12335091617010951993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f912a2e53e6590e9b2a5bf7a47f98596f05b29a2b5c8e93efce99ed98b01c0
Date: Tue, 25 Apr 2023 23:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682466365
