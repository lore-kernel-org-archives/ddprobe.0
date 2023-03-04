Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E07E184F
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 13:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08F0C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 13:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677935825;
	bh=GHm8hj0Pd65S/UuBVBNg5Bv0gsxXZ59igeVlaZEksL0=;
	h=To:Subject:From:Date:From;
	b=ByV9EAVxLBGv0zrd6qPNN9ZzOwMS3YfMgMVbCTfF01/+wd0zXF2shtmFr8KFIyvbL
	 UkUc3hEDFeNKlhDoglxpXsupSDDWW6onrEI2i4vGmsEAp4yOTF2O4li10d5MlVWIBe
	 1Ur5g7hjPHqQFlPgfenhVc2a2Je/KqRs9W2Pa9Cw918Ctx14ttRs9sAQTBWGSU2qah
	 Cq06fbf0N2seW0QPsnXpJlcRGmpHiVHgcaaKlgiVw8E6H8MOlVmsuSmDetI9bDoBQ1
	 6UVft9B+uWWFc42tNYPf+RTJdBDYMDEnSJI5v1lxyAHTJM1yHcWGCYp915CumJSG2k
	 k5HfdQ35sZBzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECC1C64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 13:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167793582575.5909.7322099924585305105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7de3fb588df75108ac38c638b251eedc8ac6c9a46fb0ca252188b86f3a7427
Date: Sat, 04 Mar 2023 13:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677935825
