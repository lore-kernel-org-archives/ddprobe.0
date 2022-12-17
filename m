Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0923223D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC30C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671293487;
	bh=e5eKwq67Fe3qyWY/MlhF7vn+IWqXNGNBYD4FlehtRk0=;
	h=To:Subject:From:Date:From;
	b=WujHeQI0BIiT0jqkawTpk7RGwbi+AWyj0cpJ1dkAV7k4rTuzG1fAyoj1+m/bUJieE
	 iLh2uLaTYeyoOd0Tt6NWZAZvZOPKwk42iALO4MVZCcmVbAFrKMH7W9iins3C3Z2wtg
	 IqSaV1t6nz9u/0hhcQeqKKvRgZprMiXl4ziMEQbwAJT9wO8k2SDOPZTaFlv+6oCh4E
	 nkX6wxQhTTrDz8ylAqntW9FrqnMMIFajV+ghRD/mWRnZ7TXHyg+I15ntosuZjOl2S5
	 Mp9ipZcjpBRUl7P1vwRAK6zAsXxLfwvqPBzue+5YRFMlG40DKSLfdEns7eVHwt0ViQ
	 uM3eK0Xa8GWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D2EBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129348753.16220.10592960167188825387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4889fb69dfed71317095c1f1ce64cb9ec4bfa88c5bd888f85b59d024b30a106e
Date: Sat, 17 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671293487
