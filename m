Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3892F25
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCA2C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662316253;
	bh=TQQgLLFt7SsKO+Jvcnf34ulyRrT86a1RCT8MVWHJSH4=;
	h=To:Subject:From:Date:From;
	b=CPij4IgweH9aGoQCnnCmmRxDT2pNYDkN+6PAS2V331ocYQ0rZP0qt5M6dHXzW+XTD
	 jJ54KsZCPdcNHFSHHiH+Tgp4CJQ/J36gcJNQm8DeqUP+bAb18Mo3wSGEXKyktYYWSS
	 OYqQQx0UZIFIjHwEWLU7FY3n8uCSGTO5c8pzpcfRBAUCeJM8n+1xOtA3oy81UHKGK/
	 aCi4ayG6zq5nnxBZeinYvlSWqjcF4VC/3Kupftu3G0b4sO043Z5rVDU6VRO/1WHwBC
	 nsBbZmHqdKzNl4SVC/0E6qrIIpjQIbp7xnX+SUqJETYtUdNeib3a1Y+qQF+hEwv+lz
	 CKNK0Yxhe680A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 531E3ECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166231625333.2792.15870839391644527997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944c70b61e0bfb530ca5487b9ac804c3681631fb2412dfecef3ab3127a5e7d79
Date: Sun, 04 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662316253
