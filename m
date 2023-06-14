Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770FE7F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C235AC433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686703628;
	bh=HcZFTCwN0j5O6cMCj/gKCVyNvb2w78vhDiOZUT0kt28=;
	h=To:Subject:From:Date:From;
	b=Dwpcg8d4DMIED3ND2n8tBNeu9VwaAnlmwg+QO22qlSsFZmvXNdtwfvypr6wN0u/Ke
	 ZFp8p+R4OTNHJIwZMLgf1Xb3NNr14GtBWaMTQEZdJiRc4Y1eJhtLHpujVKXOdrD7kz
	 T4JDjQ8LPSpG/wiLS2g49DiRphQUGzHAz29ToW/PhY+mrGMUdi4cOAtuecMTtpu71b
	 jMA+GvkN4aCe5BVXv/BmvuPjZvbhTOh1TweBMghuPYryllOrjwJgkeIHFYcxL0HYPJ
	 1n7W/GO85/8SFxA8UXQn8pKaFr41oDqD/+BxTDF4vm/vhBUC16vev/exwZd67j7tzU
	 xdN3ZpfYdcJ+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8313EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168670362867.3232.13184053876993305260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e0a7acc2524a13735030f21da539db2cde3bf0f78b201b4d54f868788d00f6
Date: Wed, 14 Jun 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686703628
