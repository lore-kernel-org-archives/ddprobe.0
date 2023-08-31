Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3538D11707
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 14:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0C5C433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693491248;
	bh=kwum3sNP9qJY0XdAGlwxo9awBzNbJYHVpDmZJfJQ/bc=;
	h=To:Subject:From:Date:From;
	b=Bnxo/RA/r6XnqdIjQzDv3LexEftZtfvoksjbZvVo028SBOujC0H9tveHJrzJchLlp
	 DQZHFIJG1FU2mAhZPvXrvvSuxuh++6uxphwcJVHhtCQw+x6ymx0m8jVdA76k//ljYZ
	 QoTO0iB44sHbqjJ+LOm8FlduaCrgVVAceJDxkazEss4wVZ7gMGvmrSACRzVQyrEi0P
	 idWUbEEW1HFZyvg1mgOQt6KDvRwjU3GGuZKr6Hvic3Wr49FaZzL5vB19ARHvW01IDX
	 t0OO3w4046TVBl/BMYDO+DOyxbOdSHUqmN9/I/PYL3bqvNcZbLJr53BR7R9Tk4jTRy
	 nQkOjx7OnMXMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0BEC83F33
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 14:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169349124869.908.14255924864407360717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee65729996b9030bb252d6634d0f5255561f984f43d6a1d3dedef7085a41885
Date: Thu, 31 Aug 2023 14:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693491248
