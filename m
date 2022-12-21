Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF35453B4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87775C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671666087;
	bh=21L1b1CTnH9hIJiscDRVR734LDA9PlsnbJv4ijMyVkI=;
	h=To:Subject:From:Date:From;
	b=SVfbPpzfZSfq5iAwVlsodBfSX2m3ETgpcb8ScXA1tvpivSDcyhddakDEMPggyqJDe
	 Bb0KrH4MlaA4XZPGisZ55GwZcNsIunMIulreiy9ytx7baEIZtrj0KPbXZt8f48c7R8
	 49oP+kN2CUiNWCLt1rqU3VY8KwOq39hueqZNvVmpOVnS/dFMJdhQlQ/mhYa/N1XUUJ
	 z932NudH6AnTSm6xgNCZhMB9c/LC9RSalKEekLaLZmVCQ8S3iFnja/iyea2xz6UEvJ
	 P7yiS+CjXXA2AF+9xMv6SGGknEZp+1+mqciJ7glW0E+lHq1I96tIV9zhE4OIlCUIeZ
	 9O5Im74CusnJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B2E8C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166608743.4541.9098213584502194125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75dda352c61301ab76e7ed302d993593a556c7ac01058fe5bead0e7e89e7f2b5
Date: Wed, 21 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671666087
