Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA114A3D
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 05:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A9FC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662011453;
	bh=BjAIpq8hNh5EFPYP91EJYcOyCef0umBWpW8mhFpXdog=;
	h=To:Subject:From:Date:From;
	b=RlaeDE5Kf1MJwSJXuxvUpMY1yYc+v9wLPQjfewgyqbf3tFnohUGA+jtX8BZEiv/6O
	 5u7EtOn/KGpWLKGTo8t5rpibGHPNsnha+h+wkw1VdsUBmJTtxRcW7WljUNrGJMhB0n
	 Xru76U7RLfMROIhezk7E2BEESJLOLETc2Buy7hWwlvL0HBSJI5dnRUGTP5QqJaSfX7
	 cE7yuR7e6Kp4AiWsiN01NQsbCMm3tV/HbW23WqApsekt99Z1LrmYxvLhtvN7Q063O5
	 n3A2k90z3hu4+chtiPQ4Suz0T7tj4iwD48bpzekruEqfFOoXknhQG8y3nQZNKoD8hk
	 iTiW2mLVbFAvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B69ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 05:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166201145334.5675.10883382273646900970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716bd04863d946fbcfa6d2d38f53b163257d20d364eca2c19f804656b06cb8d9
Date: Thu, 01 Sep 2022 05:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662011453
