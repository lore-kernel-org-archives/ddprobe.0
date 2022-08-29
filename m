Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD95853A4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80929C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661785252;
	bh=QdMjrkF/Ik+q3QoSAaiXiw+2zzyFa7I5lNwanC61Jew=;
	h=To:Subject:From:Date:From;
	b=r1s1qm9SqidW2oFQGAVCFTFTlQivOvZI73OBq2u6CkgAFK6L5KxcWKwHQ8j0PFDlC
	 WxddgczU4NhMOi97baZcfC1TU/5JeTMv0YXAZ0vPDeq7WF+atN/Vt3lR5L030Cntpa
	 AK9xInd8AD/hNVzptuur5EZ33G/BxJ/rH3wAD1dthe+hRFYX9hPnTXHvLRePFGNlyh
	 ep1VIcRLKAlcZgDfzjvMfJp9tEasXzqzU0cfHVWxDoTRr2S0ZSU2hH3SR31BbRl0op
	 xi099am08FLZpGwbT0mOsBqn+O222AL2vqSrHgEBpnhRsvT4y7jDUmpU4NyL+SxOaX
	 VH/hfMjqB17UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FF2ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178525239.31716.15234364677573353957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b469e0167f7bcf350edf9374b939f629c2d470b73609f0a157549bbde6638c
Date: Mon, 29 Aug 2022 15:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661785252
