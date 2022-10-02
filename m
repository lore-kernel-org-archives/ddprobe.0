Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D0E7C
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6725FC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664739653;
	bh=u6PBalEx/51xSem+oAMJMxwVryGsyzNGlJQG5MFMJlA=;
	h=To:Subject:From:Date:From;
	b=I4m8UCGMYnYPf8bGD5sl7QEpMCai1Ms01s9U2ABBqnJO9uOBFsdpMo3oboYs4fMqf
	 zf5wMvX4UN+UuXq8EBA2TRQhL8eoLCo7tChZ9qPOFobx8VdsBBD+78Wy5ZOfGI4TGn
	 EAZgLaT3OwpcgF/OC0a8MnZscAFslI5B/Q2vPUEARYf5P5gZ6GUxlRUvDq3B/gNSLH
	 yEneimr7WquybK7xssv4YE4ue6LrFRMTjZQX3PhyAjdkCOHYPo6rXK+Pkigq6wW7om
	 XpFZuJTot851ldABUd5JKUbKcZZIfT2oxkbG67q3LatTvF5TIIPW0UMngoLrOEhZuK
	 JxheIa0KB3E1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535BFC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166473965331.20220.12625341605509753565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96925c04f20f754bcf1c3a42d9b5532467aeadcff23f4c83d946725501b2d60
Date: Sun, 02 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664739653
