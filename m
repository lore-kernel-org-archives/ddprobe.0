Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAFCFBE6
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 17:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FC0C433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690996328;
	bh=8cvHRnfP7gFdfFTQhRl9qaJzrvUvbANCgI+LZNI9nSk=;
	h=To:Subject:From:Date:From;
	b=Hd5ALVugZzdLZOlZAk0ctjlZ/Aawymmk4jJlFwAvGkQN9NkM6C6FKHtytl/Byz3OP
	 XCinXpDe1cRSpOJyDYYFBsroY9VQZXdBEGJG5RdQiUvgKiaHF9MFKf0X/Xfl2KEyav
	 g+1voRqiOUirdDzBcuIFrjanNg9WMije0O6bddhPu2GctGPzuyCuetvkDfGvmTLlu9
	 5lzUYATHCw9ZodLHo3rZ9keosPhEf+3BJ25HRulg5cn7fwGW7JchRakT0SL41w1OHi
	 36DxNCzzKxruQVKEjTq+3K9yUz0z427viATbEMJ2tPSmjWxOSGF76MQIHhLxRJvlcE
	 W6WhZTWZSYnjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1DCC001DF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 17:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169099632870.9385.7615183812269913135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638aae215e935809b18ec3112a551bce5727a5529f5d41b9bf7d3f6d5457d6c2
Date: Wed, 02 Aug 2023 17:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690996328
