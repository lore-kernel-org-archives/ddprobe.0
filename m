Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45D3745C4
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJhJbGpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7965AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702398496;
	bh=IL/7UmHXdCUTeSdlHugXJ0omhTRyypLvEZC0q7T+7lc=;
	h=To:Subject:From:Date:From;
	b=hJhJbGpeSh+tigGBICgjU4rL3k7HeFRMdUJG1DaWI3HX3PF3543M7Nn8l+NlNDfVH
	 QPddgpQap0D23CiOzP7xB+0LbQjWiU65ce6VRWtTRWhpUIPwf0mbFWnEDjydcmR2bk
	 hK6PS/ewSTPMpm+rvqzfC3edyjZeJcNY8/qLy29ECNCjg95DEkjYSqFGPGxH07lX/V
	 Zlo/owvYLVUAn+5h4pOyGD24SyOBEcAZK/lu5/0bVXX3ZjbD2ft3TFQWsOkHjxASi0
	 sUrLg5erGTQCW91HvfJcElht30AwN7tEqhqYRcT2ZEJ35Kgjz49v8Km9HfmhJQvfOh
	 iYhho+Sr4socA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6CAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170239849637.19113.14776528187260894181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988f08f384d60279dd666718acaa578fc283574e74ef712e09a66ddc806e65eb
Date: Tue, 12 Dec 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702398496
