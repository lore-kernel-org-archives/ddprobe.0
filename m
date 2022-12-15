Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F070A17E3
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 945DFC433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671073287;
	bh=0SagrH/+zuWHqf+PhUNoi7WSKZDN18zxXCcKvwffa0Y=;
	h=To:Subject:From:Date:From;
	b=rX+j3oK20YvIkTxmX5Tf1PoxGwHWc/I8YCSjK0c1O3OOSvSRkP21KpFyT1kNQZTWv
	 83UOIk1tl8r0WLORHLXNpZriXPFYPiw6c9O+ymWzzN2Xe1TiwyX2g9MmaGltlfsMP9
	 kFgaIG7Y/0KklOHRx4k9PSCin0ZidfN54iwTFUD/OJB6iuj4iDGwj1DarJI6QQ20jv
	 kqwRIekg1xM7WKw1cx0cN+kctOeY+Psd2VaMLk/whH54b1CjyVPufYdbChNI8IH4kp
	 a6Xd04WRcWYsEgCF0vgm02VF0rb1DNj0sOYCSv/DOQFd5rvoUV4Zi2kNaKRFg4ifKl
	 IVGhMbGDO6cRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FBDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167107328741.27480.15715918587913864397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d745885bb8ab7e34158cd3fd78057e788cf0f61a8150f0c48d0ee8592384c8b1
Date: Thu, 15 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671073287
