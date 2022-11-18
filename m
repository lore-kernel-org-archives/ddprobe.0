Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEE71362
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 686DCC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668733854;
	bh=AS7P89XQigoRo6jQeWBahIbQ2AE6yUlXEHPomsUu1/s=;
	h=To:Subject:From:Date:From;
	b=BlU5JDTDi4xNPyDE6ELzvRvAwfRLumCBX2SloqSqFQ4MK5oD1MaWYvjV5Go01gMiT
	 BVZ+gdZ7QTGo4gdSy45umBGf0oftuwbbUZ+mixKEOBQu9hXWMyq6HuZKKpIKL26YtI
	 0MRjbZ7BUxQ8mG49ePhiJqcH2o/JVVZWoQzV3H62higKJyn4HXd7xqGYIxyr2ecB3z
	 Hx5O58w+TfgCSPFhCyB8hP2APUeZWuqtmG/yP2pPXJLr8RBliTurzhx/5hwW2iqVDl
	 xCvVscTooiDCK2xcfX93WjQW9RDk8P32cQ8Rsv7M9BUVIs1sx+dUwy+lk9KovVQTam
	 LW2qRMPCHP3mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52BE4C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873385433.15842.3361805814833211124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b1bc7234cbbddd5751634293a82d676be7c540ec8ad63a28781fd7bd3fcdab
Date: Fri, 18 Nov 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668733854
