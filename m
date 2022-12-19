Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA80F7E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE78C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671418287;
	bh=4jHjVrfrpzn65EnYjyGvWRMWT7qO3pJf7+JvPxDbyZQ=;
	h=To:Subject:From:Date:From;
	b=VTy0scA6HU8x4v0h9q6qj43imcMJCGIMAxkwSRKM0YA7bl8BbrLI5EyT4RfDvl2xb
	 BXq1IyHoScaAaKywRUEOi+ewG9W98iRlu+WCkId/2w1aYp8Irpao+YMQA8t5SYQG6A
	 BrfdjM15IvNlL2dQ5/mBvmGUyawiahMjh5Gmfp8+PGBduEh+3poTXMPurrN4qqoUpC
	 WIpPWw4DHlAF0znjJn9e4HFRN5tLuGUNKY45LwOTM1j68VHhkRKLvaQQ0bctalVphJ
	 j38CxAimN885nsFTz2Qf57kJm0tbGU9wG8m9elHmiOLANpLsutUhzo9zZ5ZlZ7bGge
	 8Y3JraaZb4iJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D4CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167141828738.12429.738141054112984561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fae4af1962c7183a750c95e32d068d0deeafdc8327ec9f315503141d35d655
Date: Mon, 19 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671418287
