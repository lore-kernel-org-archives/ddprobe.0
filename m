Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CA47B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 11:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D378DC433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 11:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680089705;
	bh=MEYTbAR3rcccfEu7dhFN2XbcKjAWy+OxsBNSl8dtwvc=;
	h=To:Subject:From:Date:From;
	b=FVaP7JHlGz9bnhnCm6+pOdqHaPHaLBYzjZh0bO+y2X+QSazOyhJ+Ra69rbBIGQkP8
	 mQKoqTSIERhLWgXpNPY03CPGMb/lRVxX/hNMyhC6m7VctcnFssXqbjhcTfENRsmGQL
	 VOpxSY/1EXTewPvxQ5wAMQe7FniWFC+bUIUqJTTexicIbl+Dz9hSY+NH7qEm+qI33F
	 M2Y6a5dWlHELOnoAx77gyUhVrneSkz0GAAJ8yaqu8WQDeIAz/Z1WKMPqFVCqO0JW8l
	 DVohcmLBKs2JiPes2Ppx5XcvOiP4a9rLJW7FrB+IL9Z0SJCOob77IBwT/78lI/iCPv
	 j5iRVc656S+yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB324C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 11:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168008970575.23593.9955836939686590595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1875c5094d4d42a8441dc008c0eb8a7266e64becdea3ce166be22e75d6a4bbd
Date: Wed, 29 Mar 2023 11:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680089705
