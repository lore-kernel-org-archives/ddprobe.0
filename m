Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C41D5221
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvWcEHgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83176C433C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698903496;
	bh=24HwZIApmcxOwaNf/YGJf1YTlmeHtVh50fL2mJQ9jl0=;
	h=To:Subject:From:Date:From;
	b=SvWcEHgrvFgR8rbGIOf0cB3avRK4ajLgonjJl6XAa3Pr6alU2Frveeh6dfRtpPsJw
	 WP1HyJApUNucM9x0R3I7SiPkBTBjGlPtaF/FpTv2DMpbwPUB616PppMXbyqQPBUIRM
	 XYvKTY9uon/q4w21kgMihi0A/Q4xStsbPNYU7xsR9oytwXg6tc3NZxzHUdxMsRStqW
	 u5WPfwWyqT3anBzsVqmeaJxfUb8uE54EwfrSqa8qsuUUOBMPmtkQw33rps7+ZzSYbJ
	 ukS/o0v0bdtqJ4aR89VKt44HtNhjcRpaKj6TPUOzVVyJnpcbNb4t4KTSJinDjbUaOg
	 X/tLn+ySWUsjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DC5C4167B
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169890349640.8106.14201978309241352583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30de206039e660f61c02d242ae928c7e33923d04ef8b65175d83a80ed86e8035
Date: Thu, 02 Nov 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698903496
