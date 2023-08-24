Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78148D524
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5722C433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692872048;
	bh=c51YJjcrE7MdLKqxrM9KXfz+I5hnPxKI7B5BQT/ZIJw=;
	h=To:Subject:From:Date:From;
	b=SXLI6QRv83Fe3WoB2Y8xgZhbiWtoUczn7Zl9mRWcFBg5eVlAbvm0+42SpLUMtEoGl
	 oxMw7MUTrAQDzI3OHwsBq2HzpkvxtyEAGDPrT/CYysPtvdraV4SGVokpclBGvVQpJH
	 xSNdxxrmIytARGK6damH5M2Y2e7glKALqrbMd+GlcZIkgztyQJBlP9+TOAMHeA42jM
	 CiGCvhlcaIwpNZVEscKI/8no3qw55YZueFXoK8w9NpOUAuAQCsT6TFeaC0sRxMfxUX
	 2nZDvvZsEf0LtyBPu2Lm7S380GJrAY2kiwi3G0U8zlCgPNDM0m7MWbdbWsFkGgbc/J
	 qkI9TEEy11SFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DDEC6FA8F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 10:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169287204874.25314.11979007098343871339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981a3653d71a6ab5dd45e9cc9d887df24df9e465a385e944addb872c41121d9b
Date: Thu, 24 Aug 2023 10:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692872048
