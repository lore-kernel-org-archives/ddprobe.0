Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEF26084A
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 14:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D339CC433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 14:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684938905;
	bh=4zQ7oe6dCOvyeV7je03Dhi/ArsadlrLKokJZTagcoO0=;
	h=To:Subject:From:Date:From;
	b=bEL7x8rMYGZ78VNmflnptdxxI4HMjOe1OM8+H6FfvbhvzE8Tub+CEKVjPDR6HBvvp
	 Hz2mKcU0qwANUPfPoPuEL+F5z/YySDX5TU0OG/MUgMN5mERhhMPhXK2lbUVT0jv3Fy
	 A7SbSCrJxwQLC0IE544BgN1byVRR8XZPNok08hmeW6IHtL0LlKotCXPSX5xhzxkVhD
	 jg1pUxQxaLDxmN4l0ztXvyQlHI18gUOs102mWY2gG+nYw0D8R0medgI850E1gAAf6s
	 Pqp2L7kCEWJvuU8s09EzmchFqQI8vKd82LvcxHdOxTpUUnkMjiXGU2I2U89H2M+U75
	 XN5Ujbq2WI4/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9315C7EE23
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 14:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168493890575.31728.7518239394627849635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bce554676db3876ddf89907353df92f265865c354a415cbcf021f80654d6bf9
Date: Wed, 24 May 2023 14:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684938905
