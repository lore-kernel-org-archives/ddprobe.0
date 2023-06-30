Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6B11643C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 16:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25BEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688140988;
	bh=kA2bCNh7MlkdqU0oZKU0udQcwvRSdTAlrUkMGflPm4Y=;
	h=To:Subject:From:Date:From;
	b=iM5od3pLV8jzoyKkmb+bX0fmfZOXk/XSczIuWEpdnlVBVX3vBo6VsPutqX6cJ4OK6
	 OcR5z71CCVGdNAYHX2czRGcTG5F0FH6dr5dDe9MJDxQItSE7LyqJA0Io8CB6V2r0qf
	 MUWkz5Ap58raC//OAjJb/frTfZHp5np4kVnLwO6kVaLcNcu8j7ZamaNCF/VNHbRw1w
	 DWOa7zh6gd+BA4WgJWtVQpeUxqiED6AiEJTmzocz376ec2PNBYyhso2/v6m+D4H9We
	 sRH7OMdPRCDduPPl4hdYCr2Is6Zorufpa5JaBLj/s59hrFgRor3rCwr5iRn7WpPNSc
	 w1xeVSJF8l/JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91BDEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 16:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168814098868.25892.4229374790061081881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe6be9013abd3764d4c72bb776d6d3eb377cac0d0c207760fab649654787220
Date: Fri, 30 Jun 2023 16:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688140988
