Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428A2361
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 01:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D8FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 01:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674264125;
	bh=kz6RdXDUMZk2BgenIpfbr/5Z/Bpu27Fpa0jfJi2YdeY=;
	h=To:Subject:From:Date:From;
	b=YUHIrg+1rip7t66d3j3Vy3ZgruZcAfkASc00GnKLXs9R0MSqqsPUo+puP4V5KOsaH
	 1QmL0OU220nb2MQSTYnf4DsO7OI06uRcMVLPIUIm8Lenf4kCwPVrWjcdM57kAq5scg
	 3jzXzQh4ZU+1UN6s5CexsR0V8SguTX+c7IQfYn3jcp2DwD8pOGcv+E1w1iCv9SIFkJ
	 egpx+xJ7mWOdUDKbf8uiHY+SW4y7+HsWBupyRouyObF6f60wChHBJdx8XM91CVkVXs
	 lIKLQTOoGHwRYFKel4rnESsNpgcnue8dCmPzq96AoqXRwxUIqC19+7TnhCudMvSd20
	 rQCIUEK+wx1RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD17DC05027
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 01:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167426412576.18895.7025981367320062936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba45d2d9bbfea8a5ec6c45d7af92c7f5cd456c1a01b5a9f436076e95fda8675
Date: Sat, 21 Jan 2023 01:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674264125
