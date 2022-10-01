Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6312569
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7720FC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664624453;
	bh=tuNeMpFBk1hGCOfHfGhCGfFz4BdlPOsa3AxbPM1XoyQ=;
	h=To:Subject:From:Date:From;
	b=HH5yqJv3nYIEKthO50jie3moCCG0eAV59OJY4g+vF1diC7BG1Nkf5+33rOtFNcTSQ
	 NOZCgpd/s7hFConbQT6xbPPSyWPpLjtqY3GPTqFO8s0oZt+6zMXbQnSP+EYYnyQPAZ
	 bmnWt4KX6k55TaMsKB/vG+S2LAseZKfUzjks1Nmvak5yWDohkbcotaubM2Osj791ej
	 slqY6DopK2fHClEwTeWMvVSmlRopjAuqGsI0c7ukQOH23fEoo/oKmpc4IzB8fmn3k9
	 NAtYIpNOBzGbA/hk7zJpqjzFbPMC5KzZaMfa4jBvRo00qrZTxEuGB8nXaukj5mjZl3
	 yn7K4esscBl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B28FC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166462445333.24986.2935788853071032855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b63b51d1f47cca2b38e64148716d5c8e47873f6347128d6325879c927d52aa0
Date: Sat, 01 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664624453
