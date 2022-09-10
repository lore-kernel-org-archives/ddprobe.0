Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D464B7FE
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74639C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662786653;
	bh=50E0T8qGgsyH12XVBRfSeaPUDziPjddU3BMsRhp8QS0=;
	h=To:Subject:From:Date:From;
	b=lj+SmEJcGm0k+ZmBlcMuIHKM8AyDXycm/MuA58nC2SoOrY5nXg/DtGrSabONNpLZA
	 0LppF+mPAl4CxdnEuS7SAq60jvO3A+fTlD3dsVsog+vqPlAdNVSdMJDXjDXYG9LT0x
	 rZmQxKtTO3rW184dJFjImuhffFru9ZgH9jWOs1kWeCv/epPiMlJcoumVyXvJtKtMmL
	 mXpZgf086FtWfyTWeZOVtn9gEiKISoJkgfvQ8vrBMtoXkZY5stLlufMF4ZKL9izLbe
	 5XcMUyckJW8QIxiIU9aSX3SSv1rM8RhPjCq3jqPHsH4GhI/xIPfg78qRAAtGjUhnIA
	 UFTDuU+0jQrJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59A44ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166278665333.16879.15294467883412145563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8cf8be042d14218eb62d87f0f7d55f5aa755ed90fad46104a92e5705d96deea
Date: Sat, 10 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662786653
