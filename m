Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11EE368
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85880C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668193254;
	bh=4UE0jeFnjMYDmzT9iXrVF0v3Pfo1lpy/wZNEKfZ9UXY=;
	h=To:Subject:From:Date:From;
	b=Y9dWroWyUMZRnogPG9+HA9D+dKYN3kNsSI36i6nWDHmP1X5Gb4olk78ZIjbV4N/kN
	 iplkGVtb5ouuICCC81NYgvoWIvlFpRHHMUUg7uSA5q7tgSi2sygN5gq9tdJx4lHcrG
	 EAiRFLCeCSUcTBdLUj4ca6Z6M8MOYOJ1cfn+n17p6oOW3aYh7545hDwJdwqJylXg8t
	 lciPy5RFrstfeD0ZvthNiaAGD3m5m5q6+mHV/o5GvwYuMYReYHqkhmmay2Kyv2blox
	 H8ALZG18rBAHibkkI0o2ivH85hvm2ZVmNWBBsaflqY/PQKMJ61srMEyM0GgvNyXOTU
	 mpLNfLGuC13ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEB2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166819325436.24092.5657493455872091934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664002bffb35652796c318d684ccc9e10b3be630828615f2973502fc593ffa27
Date: Fri, 11 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668193254
