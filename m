Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152DD4F1F7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5vxKr6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A644C433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700675896;
	bh=VuUe1kCib4cYslEO6fHyYHoX2r/IDtOTbxBawQNy13Q=;
	h=To:Subject:From:Date:From;
	b=F5vxKr6nRrruuwKpGA7f+7wglbwXdC87U4wgqZ3yYwiMYbZqlUARsYwn6y6gfXgF9
	 0sTAVoylrgCsHA9BGlGXT29S7kzHPE07oL82OkL4/NY6YPq+2P05TGg5uH2R97nH3n
	 DJgZ8dJodza1OJs7I4+c3Np8Hxnu6KFegJjg+Oevk258r+ciHmrncgXP4B3j1jZEyz
	 iWG6aM/DJ9lowx5zLhmoHu+gVE06c2/IbAbva6T/52LcvZOh1HiRwD5WBwE4abolnZ
	 QltWxis7NIcvzfm/3fU5WzbncKid03pXmpxj1xVqWLNmx07rk84KDKsFSgqLGhBbRK
	 U7zYMgbHADHCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6258FC61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170067589637.7166.4403593470214638592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28392db9bf755b12049bacb57780d53e8fac9997389fee1768f449c89f512c9c
Date: Wed, 22 Nov 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700675896
