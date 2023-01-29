Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC1C2FB2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 19:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0659C433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 19:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675019585;
	bh=8Tdtq9/zWvnvpIlev+fbTs3qtWYrmTBePBgmZdlMh6M=;
	h=To:Subject:From:Date:From;
	b=ENLLrNvZ/7G3O5cFjdipIzg0cC1DxoC1rnbD6Mstbof0FLo0Uyya4fEP5q92EGI4g
	 J7CT4tZIbGe6K/cBXalS/shNaVChnLGNrUNjQC2UD2zUZBjjTwowGVHPLzvlaNsdbZ
	 C/JtbBZA5YqzjTl8AlzQIV+WgC11ySjGhFMSPv2Fd5bQF3lQmPTTDz8oCz11o9jrQC
	 hw7nNHWGxVWEcAG9fmf5vC2SNQ6Po77CRXalc6YrKDMserx2oX4+X/okCTnlZEd1Z6
	 yn+rLrev7nO1amh1rAUPQg7RoepHud5CzAizcjdpxF9rU5UuJmQcstM2HoQi1sqKRD
	 upoHwXvnvxl8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AE1C61D97
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 19:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167501958573.5647.10363203641816536202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef40d7e2a4728a00248e8d97b619e40b2a5fc8cb438c315b6e2791388cf37c64
Date: Sun, 29 Jan 2023 19:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675019585
