Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D8E17E9
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 20:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54EBC433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 20:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692217388;
	bh=7CGhlbFmh6ubxLha6+XFhxlA37cUpor53ZwqEU3Yb04=;
	h=To:Subject:From:Date:From;
	b=a06ZdFkCPDu6xhznq3crQI5ZU11JYLQOAj1EtfE2Mgc1lIlV1uDv/aLJtspvh7ZbK
	 LQB7HK9RICCiipfRRt5LiDJk6tVhB5kc/m6oWd5rI8vxAy+uAuNjbCwrqye6xNZfdE
	 bZ3+IXAbYkmAnWcx+NU78P8Adf8K13cajbD6LKSuoTk6UuZAfCI6bmCBp03x8jfA1A
	 p6TJr4CPM8L+Mko+y/JChRaVEC+cm7qJKH0su1EhKprV8yDTIZ967PYs9eKqV99iza
	 J2S2B1xt3de81c9894yJpl5eC7eu48qDJTcR+F20aWFwhs28Dvf+zqssCQ2pdiNsxA
	 SifVb6S5BRwtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA511C25B7D
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 20:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169221738868.27881.6342942742942470477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ecadad23e93d3c4d59df1dfa2e36601917b58ac7d2d0f115dc031132efc07db
Date: Wed, 16 Aug 2023 20:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692217388
