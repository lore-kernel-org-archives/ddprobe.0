Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1690E3D3B4
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvIjynBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E42CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699979896;
	bh=4qot9WrLoRbTl2KvEd+YtXpxnulzuogZRQCVqk1DFMw=;
	h=To:Subject:From:Date:From;
	b=WvIjynBMUx1vApm4P6+psaxpsobIt0Axudg9cF9iVvKudQR+eyjlTnGiotgNa43gc
	 V3azsZ46Pp4tC5/NWpcT0uoyHuUqUS9QrNXjPOgM792StxjVz01PtBhFFtyfVv6IDh
	 XBW3G9djvit9n711NWI5XhAX7w8FLrvyznhzpQlQGZA4naK2dpanG8Zl4rHCp1m4ph
	 udDJxlHTm/FORIz0nLVFt/UXQO4pSjFqoyv5f4tgreT1IjF9lph9Ee0riF3ZHioymX
	 D6KdNZziCqAcbXrxiRf7ub3d/y3u8KVR7Hmr2PivYU2sqPn7l7fJt2bi2efG3ZfsZz
	 2eWib2Dmw+fXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654FBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169997989640.19361.2800330489122817619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d4cfc156e08d0bfdff40323bbfdf2ffc45451f8f160c9c9a4ca0837ad7308e
Date: Tue, 14 Nov 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699979896
