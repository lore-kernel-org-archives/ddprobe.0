Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E8A180
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95486C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673396487;
	bh=b/guM7P0LfL3Gpls7cuije+/hVoDZz4B9OmHOMO9LIE=;
	h=To:Subject:From:Date:From;
	b=GsTAXtz0mbnrZQa7ip+Xp7O+HXiS2RIVUJNAiHUTdZMDD5O885zd8OR+b0X9MygKT
	 f/bttXJdNYOarbEa2dvDg6ocihoo9au8R+lWZlz0O/PrtnnX7kxt5kFvsfvsexgnfT
	 O4jv+dZBrfytI5nMRHhq+sCgw7qq8vMgeLTWuScIVt9zGaPtALj1bl3Qg0/pZsrLS4
	 yQbbYIUM5RiTg3GAxauHYWiIBuV5f+CdklkZDJki8iTbPUq4zdTc9evXYHDpO3hlWm
	 7B5zgv4ivPEUqXnyeDnKh8UBwDtKXt1U1aBn8OoGhyoD+KEKUSIv+niGmRtPg1NlH+
	 Elip1caWVBWsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BEA7C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167339648740.32522.3838936750794216261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cc5780737130a3aafccb9507774f97008db0f6d467422176d8a2bb7017d282
Date: Wed, 11 Jan 2023 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673396487
