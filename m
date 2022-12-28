Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046702F43
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EDAC433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672261287;
	bh=bPdTTMD7f2flXQyZXSbr0z3eiTGV8ZubKCAqPQCRR2M=;
	h=To:Subject:From:Date:From;
	b=uAc93w+mbHsOltN2X7va8FRhd+FejIhA9l71jTNJAnpLglJiEUNxuNaGdyGkkRPdz
	 ZKmB7e5YRKgVh16jl891dcCoI6BxXzJodg6ix5qXop1LkbmwXu2CMOT8i8vpLlX8qW
	 7JQcWwx26cteodnQiRINT2CV8r93oSSXYGpyFuiHDDPU6+KcoM5EHtFvVXzONlp/Gh
	 RpVZJfoqpFFyjbh9HmxY34Re7iDWKwcpNd/+EoFZvkasSU08g4L2WKeRTWjWg5qGP8
	 jz1rIvM4+yhi+EzJr8mmuFZnqIiAgIQY+0C44OztV+9PeM1j1qpdVOZS9XBsjbn9ru
	 sPy65DHB51Mxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CEF1C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167226128748.18960.16414500959731372164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c5e25eabbc192ceeacfcb5e3d600d8882c35acb1a3a92e1e39f763254eab35
Date: Wed, 28 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672261287
