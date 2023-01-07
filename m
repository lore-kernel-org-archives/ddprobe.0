Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4893185C
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F6FC433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673096487;
	bh=Z+Zj+ifI+avWaua7nvivVaFfyg2sQJvH2bknhJk1J68=;
	h=To:Subject:From:Date:From;
	b=Abh/LHV6GXWcB1xOxAwmXVuovMqwW5atOg4rmkLIt2J0opMzQ67ZS4EYSwxHDlrU3
	 31CCO6Fmg8kcW93roY+0csAuyTFQUuQIA8pvrCWRKRoFDUIh944cFI3fCayMliw5/G
	 Jg+LUTQsee5v+RCR4w50YIdqru5uxsN9ua1iqPDr80x3DhRti3TN9Wfymj2ANr8OYn
	 wdmMqHeNSLGMONyzP/mkBG+qAdxM4QNCxOmHMCOLzQYZnLDhaRn3ojA7+b3PugcMU9
	 tLXEGSFqAt9oPKSRp+oEeffE73kr4PaC+oS1Sl2tL0TaU1fHOgNIKwBhtIFUbfqTse
	 9VtCYapulsS+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6570EC46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167309648739.29776.8054736876513888637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2f2b3151931f2e1d17a8fee39d736a624d8fb22a12ed6d99e5ea95065c906d
Date: Sat, 07 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673096487
