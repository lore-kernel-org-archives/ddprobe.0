Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D375717EA
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A38BC433B5
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663291253;
	bh=my3V9KFIBDzupKSMHTJ2al2/jfxHJg6TNZ6bLOIea48=;
	h=To:Subject:From:Date:From;
	b=jaiz0yhyKohPXC8PN9NfuLxmMYaCO51spnOGzCzVWRfxWx+oeerfb3N+0pTJw4a9A
	 VmBwfgPy2DGwB2nAwHX0znijp0Iu8fw8BFPW1BExbiDMNIsX8UDi8UDsWF8/HN2Xa1
	 XlRj40pbnImR3yyArD8p3cNVwGFbGhdB1bTtNdXbthjbfGXYjSYvCL6geyiWaXUBnL
	 LmiW0n8rwZvPwsbCn+Hhd3mO/MqwEQAddmXNml48vdUy2eL+gvrxL+3dMPq4ivR/Sb
	 7XwCVJdoQICWBCAS2U/KGEPFzQ+u7YrliSY+7zo5Tm/ZUE3WbJEJIlQK5WqwFeoKd3
	 GbE5RfaZz7aWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B2CECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329125334.12667.16585534271244116261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e081fc25c37eb3ea7c7e636863e32dbc717ca1d8208d361f3fad23f2a176bda1
Date: Fri, 16 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663291253
