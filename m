Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE1E7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7192DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662918053;
	bh=8Kr0UAbJmdhp5w73IrGI20RXDANiQRl+/sv8GD44Amg=;
	h=To:Subject:From:Date:From;
	b=mTqPIqGx6AEArBtFHhMMRM1j9JuTRM4CIUvf4RuNeiWWrzzjFTZpmoL4a/89GAUV7
	 Re0aYZQn/gegh/07UdcwP9jr3kh3WlQKg8zDFasHdTfFt70ukpW8lymNtF/mNIbvYd
	 P+7CRJStTyC7wCi1HziQHtZeEC5VfcAmYfA1vuufVyCT3ok+tBkQIpmoFdWRzNsZVj
	 A6AkI9eKeWk6+JyADCBRf+uvX49zDtHbFB38eJ2uH48RE8I+evtnKj6ZTCXFny8Cck
	 jCH1vmXiHZ70z5X9Y4uRg+OZyv2MWRURxjXPb9f1N81HOgLYHkPReuHMCMJqCNIUM+
	 KZernE143ApIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5087FECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166291805332.560.17489470408289356465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb34d3876ab04f06a179240c45284b8ede21afa672bea65320bd851a6f60af5
Date: Sun, 11 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662918053
