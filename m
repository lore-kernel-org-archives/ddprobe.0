Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3057428E2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 10:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF99C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 10:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680518165;
	bh=Hi/TjjP7kfpSjgMo6odiP2XgcIXNeW1SPj65BwDotpg=;
	h=To:Subject:From:Date:From;
	b=cGURtWsGTlJoDePw24UpadeRX71RF5cc0qMYC2tKcY39sAhWtsLGoRKX5pDVy4TH2
	 GX63F6JQ2QZtKIH6Cnbl6afC5ZHuEPR2n63OzSMULn5O0XV7a1hOeWVXuLNMSWzOQa
	 JrJ1K0hnSwj3Evl8Yg6G+52GJZlri6UvOXs+iHDIbgTyLewN80DaQ+7Kv/n9jA1+Wh
	 L9CvoWOD7fTbXv7dJsZc2yELd9RZDn4lvQ0hHJxJTvAPdVUlsfCa12INDIh+vf1ib1
	 FHoF4dA1F9DrJu7V8lzdKSjHGMOkiqk/jyWb2BupN1KUfklMF6x+ONgdjL1asLjeSm
	 8ArWPIP+BlV2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D03C761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 10:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168051816574.9944.641536217007087592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf722b8dbdcdcddf419e7ea64d69532c9f7e50aebd5deaa75460c4aa7506ce75
Date: Mon, 03 Apr 2023 10:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680518165
