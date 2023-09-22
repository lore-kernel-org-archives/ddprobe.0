Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AA5A41E4D
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 17:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29E6C433CC
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 17:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695402908;
	bh=7ors0VPlu9EltHZg9BTda4l0+Zej1Jg1NLmPphYrf6M=;
	h=To:Subject:From:Date:From;
	b=dP4OjJu+z5/vCTzazdtHi803NXoZUH5HtsP9JGCnX4VxecF2hFhIM2eSsFBeNYUDQ
	 TaYcpPgyUTN5x/H7fVpNTFOfPSsKLiFmUYPBJ3Hz2k0L6LDBKZye5FkAHh8hnzFFjf
	 fyV/HHpVePTy7ElHYxPnrKb8xqJUMgu/zi8+sIMYWZppyoOAs1qRTdiSzM+UZNe9Zq
	 G9L3E7c13mALcd/ZPfTiPeajsA3n5jSRcBEpq8MyHToVlI7xnxLrIMEZm69xYB+1Id
	 810kthB/OKCxqz9bC+mUkSz7VHOGZWq3c0NZV8Bx2h2+xu2FaS2pBjXN2TCn2IKOlz
	 MytaiL9yyo1Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B63CD4847
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 17:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169540290871.11195.14376225086960590710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cc7d7cb30e7b613d12271bb71c52e5ef424d2078e37c06c348225a424af7c9
Date: Fri, 22 Sep 2023 17:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695402908
