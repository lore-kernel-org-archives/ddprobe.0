Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEABC184C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B45C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671523287;
	bh=/xeG6QFDCkjl30Rvp8XqtYXBR5UI3EGMqh/5E/gD3sA=;
	h=To:Subject:From:Date:From;
	b=S/LfNv4DME5cwrYnPt23jU3UZxtgy0Pea+psz29wyRH2ioWNI1CPv5C8X4FKx3Pqh
	 2ebLfunOHUcgnCu0kZDR1mzT5eCY1JdJXA2A+oVqsiqvn4l3f4KXxF/P1MKS7wscJR
	 hSRg+wT0jAG7zvQ4Gn+PaCi1n5ASQK8mW5+/WcXA4pAe8qT02LGrEGerINWvGKHJew
	 Nki5uH4PirAKg4aI9JFEH/gDhUqd/SWFKuy4iIJRjBsM0ap0JlDHmE/lIjGH+ofndL
	 v1AM0RC+T7F0r2rJyKEo4cM5DBVq/Ygc3+rfhoZJLIZqA+eiHpfYjkfOvk9U/vEmPn
	 IKCaLXRxbg1PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6965DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152328742.22581.789664510041001183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98fc441769254d4a933fecb2e5a07fe2056f38541aeece2df8b11b0f0b08beab
Date: Tue, 20 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671523287
