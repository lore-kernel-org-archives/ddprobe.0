Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D3D63C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85F98C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672172487;
	bh=f44CZtMrO+KP37gJDoxb16UE22jEd7n29gtQ2e1P1j0=;
	h=To:Subject:From:Date:From;
	b=CDJsOYIWt2z2erM9Ec9fdjUgHa8SF1Ke13g2tDmuSpIfMf16Z9cLbp0v/qGOApM34
	 yQ5K/s1WkcDmD5snLNKJsMW+YNnOb2dTcl6mMpWttZ7NvKafxtPUHjwaInF1XGjzK9
	 KBNIffylf9fAlUD2p+zaFTEHkKsRE3w/IvpNwhkAtmh+ThAucu8KFAUZmo2pXB85o0
	 kW4UHpDP1g6tsli1s0i5T9g2FT7NhAI02FOgIJE/hFLZ947VwD783/B5azq4DMxl9T
	 ARNlm3PvtXZiNgUUyPU8f3fzx3GRSA0G98PE40gqoZa5w+CG1DFcWHLpbsbgaVpnXc
	 YGHF4p2eXcieA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5B2C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217248743.26999.8807752753956942749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc7d45fa791dd1c933caace2edc3f6645f3817178a89d6bf3ff76528c1da695
Date: Tue, 27 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672172487
