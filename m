Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BFBA28
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BFFEC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669858254;
	bh=4bI4TDRhxtee1lyfaaHNhfivu51ZQGFPIfsGYLx3QTQ=;
	h=To:Subject:From:Date:From;
	b=CAV7oNx4VLWO9Nww6cYRUE6zCEmX3I15MXNljlogQL6aX+Ue57UEZElugN0aIWYp+
	 L82I/526G7vbqqdAnh3u7WQuG55zuv2xv1ZSpHsTUR3LMhle+sD0Oc11drbgBZlBeX
	 DQRke5PUT0xVDdx9jIU/p61dY3OatvHiPkSqRDkHjxtitXETI+yjdJmYeqzJs2ir8p
	 7yMqit6yNJ7UEA6GTgwKZJAPoRp4qach791+FlDQbNb0i2hmxJbqIhEoHg9r4hdNUL
	 oLpigNMM4hRs5ZDdycqJmpP5J/PG7qOP7xWtTBLSDOtB5tfL9Aq9o8sNO8fS0zM7H8
	 0By5NSbLd/Myw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60549C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985825437.10969.10598748331143784239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5e0a2305c63f985b351f720f1b77a2d191dcd24bf69b2ef3dfbce55bf15bb5
Date: Thu, 01 Dec 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669858254
