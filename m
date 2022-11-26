Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA57617CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 851C7C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669450854;
	bh=RrokDeofkj7WV7GSZwV1gnADqOCyVpWiTJsPxB0rmKc=;
	h=To:Subject:From:Date:From;
	b=lA6ML3TQsisgg5TqA860gKSQsjQW+zKqjHPEJ2yWIXwuN/ZhiQ5rOnjfS/Eav+QF/
	 xcHMmV+CimZgtqIvH8NJF0GK4YOWOnQgEPtOghSolz+dC4bWt9BtQp2mATrOjZyrwo
	 +CSHeC5RwR/SbEuQ2u32s9gydCwLatAy7M6CVnhWVGJi5dHfItWW02uvPBCoQP3cYU
	 xA0U18TT3okQWjSyRHVU12Wf8N8Y3E4iMgvmItztgnM5lXWLFCFzADaCYPbECaYlCd
	 jQiPchXQ8tiMojPTZRXsmFux5uDJvkyzcoyFFSvUKiN2SitHahY8Csk4lZFv2MPsfm
	 I0+xFMj5flXfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F58C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166945085439.21870.9703306920272209847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42fbeda85199a033de68896a780d4bac0abf8baeb96d4f7854087b68e17ecc35
Date: Sat, 26 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669450854
