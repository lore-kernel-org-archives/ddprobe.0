Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5987B23AF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 09:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED53C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 09:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678441505;
	bh=R5YwjR76HmLCGn4s9SRyZARW66M505acfJzRTHPHK6I=;
	h=To:Subject:From:Date:From;
	b=Yv9aGm89cJ7g7jxZekdQRxDMQqd77mGUPIYu3yUf/EvU8BSM+7tc3Kn0DltdFuzSt
	 WxSLSaOMaCfZhOMc2tiFZHuPzsDI1q4o8WQajlRpTbGMzw+/wAOOsaGNCHWJJDR/4M
	 +2niLHqYOCctO9bKyaUKEtIpTLmhXLoA7J5/l0/anGX2JwSnIzChInlXk6VeTN3L2J
	 eIJF1WAGoyxzYSLDfl5MzBcm4mfqWbmTLtW2O1H0Uq4QXf8qDuAYtWjOJjRYlHC02+
	 eIU3ETQdM/2hOaQsF+KLOTBQi1tqwVo5dvCBAtk/oYZbGUriHPKoLCrFcYgm5hBixf
	 iyuf68GmdJ6Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09D3C6FD19
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 09:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167844150577.31087.4943137664966221852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa988246f2d7cbc2a1bb8d135c6102893538840887db20d476fd3092f04b33e
Date: Fri, 10 Mar 2023 09:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678441505
