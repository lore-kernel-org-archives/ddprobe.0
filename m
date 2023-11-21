Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0E43218C
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJA00Xvv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF1BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700558296;
	bh=Jlq551oiE0Edj3wikgOAxfNUanmGbijt+LlCsSuYLvo=;
	h=To:Subject:From:Date:From;
	b=pJA00XvvBnAEe0XJ5oKSZIpU99kyiYxjZe50hTVNxV12p+D4IsYpt4wuRZSJZgs63
	 vNGk6bc8d4m7QPh8efQAeElJ1Gce8LI44CbkOLpv9W10afa1goC29JwnD1pXPeMEV8
	 EzWeHT9DcuQtqdSmAJxwJZ4E98+Pd7y0nV6hDb18iCPRtGeofbsbohHVWEl5o8L6Sy
	 hXpXmn1MNfDIq9eoDM8MlbOCiqSEc28wLCh3SfiWrH9bsViCwtnM8gUdhi/Rq+YB60
	 jZR4r+YYeF0dpybVEeZDRp5eAUf+TI5f7lBJfGBVeRd23Kh9f8scUCMvdaVFxMCSe1
	 pLH0Vg0mYiScw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618DDC54FB9
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170055829638.26806.758239498316814639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f28c8d4b92ab20f821613dc4787b6d42f56448b6e7cfc5c81f00fb0187ac67
Date: Tue, 21 Nov 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700558296
