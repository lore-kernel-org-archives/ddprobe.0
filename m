Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B5F36A
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CFDCC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672017087;
	bh=4e5UcaFHZkZwkxcWGr8AVhenPKZgRfuHBLQIm54gNDo=;
	h=To:Subject:From:Date:From;
	b=EaHRl0Es/KQaAFdEpuHCao+xmxAFfUn1u1R8jRInbMOf9gGZWEqlRAA70MGVTFeZD
	 TWbV6yFgKbyA3Ih7gYd18XRk6Fw1h6d2a3BkFUS92WBNMP7cbo9yRqaEOHLu1PYuuN
	 0goPU8A65DfXU5jl6UICF2pBAPWOXW5FuRWuEYkM9qO4q9YLh+HiEFC1CS4dg+fGZB
	 VV8n5p5Eumr1KQ/4Oq8IZ4vRnxvuULqmBbhBmsTa7V9xxxg+ldct7S5H0MgRdE+Ybn
	 xzv0xLklWS0entQBur+CA8C+RLqDcybeD549OxSw3vSUzNVXpyI6I9D+B8B7IVfWIy
	 vYr5uR8d8MFXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611BCC4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167201708738.2092.12627582499543399279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e0dd9287d803391094172c985f2c3e8eda4830d137ab6055089c01b13380bcf
Date: Mon, 26 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672017087
