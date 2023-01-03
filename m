Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2108F57
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DDA1C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672776087;
	bh=rVVZxIC5j4o96NqbQfmwwyuLzJh/Uhsta8C/hurfNWw=;
	h=To:Subject:From:Date:From;
	b=gwjwUSz9UvmncXW4PsF6Nu2Xd0a+6fcWguM3PCaf8qX/DIKPpxXXQX3dQrh2m5yU4
	 ratwcXYVB+1922XJAfHdNJGL6a8SFw3Q6cRqAosw7oVzzDQ6BhivoJCkQEbe/HZo4D
	 HBGOUuzafpv/KjNCJicNVNweXZ0u5MN96fUQ0D03OOzbD+VUBmWUlnHSepgY/JNp1a
	 I++0iv4k7VxcsVYTmi6mL1jBblLBXJPSO7dzv/PeM7tbx8b9s84IwsCZAp9eKQ+HMB
	 OmUXSIMhQOIcJe3RKmY6ld29KaYRCbdsIwiPRs2bsT9KT1UJhzNUefjr70J4GCEwms
	 DO0PZj+OQrUgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA88C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277608743.22545.12163511545028719811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da2e1cceabe89f71d411cc659a796a84b8f7afd93f692122c6bbe37bb9b0cbb
Date: Tue, 03 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672776087
