Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984A48BF9
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68D08C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667932254;
	bh=OapgZDM5T2WzRaBswXQoZjgBJfVVoEqJpw7P+4Q3KUI=;
	h=To:Subject:From:Date:From;
	b=L5q4H3n+cP0QLqd0qb7ps78vy+1zTJ/Ltud/PPuyP4LxyVtPtAfbcswmtpq3Jfp6D
	 qy67S7Q/KNA7lT9H3zPgoIG+WZPqtVrok5Ffn5XPr2/TooiZgBzkwYHArlHzEM890q
	 c1n0L1kuVqsRjXhB4VWBob4j4EWVbxyv1OueJ5uH2GKBQlgzc8ANICrHm5j3CaSN6i
	 gVvFv7d+lQkL4g+IRsd12C4kan31b6e+61D7DXPQzyRSIprCfBWINXTgF7Tvu1EQEN
	 +r077Q6/fhTwa9zYJGYlP9trcxzjPIjkS3AgzVK4ppDxAvhjW8Nl15mWRPmUgNcmFE
	 +blSzC7nENdIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5547DC43217
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793225434.21474.5333315301012208236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce7397ba589f56e0be1f8ed91344c409952a5bebe90dec9554741531a6f3454
Date: Tue, 08 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667932254
