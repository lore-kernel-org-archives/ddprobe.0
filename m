Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0753FB673
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nidw6/km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784B6C433C8
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703135896;
	bh=k9ixHyg6noqRA0s707msW+H92GejMz6omBgWUHHb3f4=;
	h=To:Subject:From:Date:From;
	b=Nidw6/kmN8fjOF0A4/SNjlJjLR66vJnAsjRhUNo65ZRNTR2r3L29AXJKVUHXeGNl8
	 PQnx+ZNAfBsqTJAZPKXijl0Xer2iyghOQv+S3lH5x4cLHgD/VlajiDqkB/Ym+rSPGS
	 z7L2m6gKgqHcahMhjvgtNz/GIcYMYkf5ZEg5RvS7fgnQPcxZk8c5tLH5kwQYfIlhOI
	 qiL9cmxm960/5hPKpKZgRB1hfQ0PafMjWqycTBwKQkBeLjZ63o26y4/peA7VWhDmO2
	 E5IQsaUTHkoi+TO3IcD/c5v12q6UbHw5yZUAax7oe0cjWJVLCmHTrJ3ix0XkZ/RrGt
	 Y4ljDwDRJnVoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E657C35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170313589637.8154.3507548990671912102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8754008e71710ed6103a68d21b3f0266f8a8189f12198748d780e61dc7c3bfac
Date: Thu, 21 Dec 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703135896
