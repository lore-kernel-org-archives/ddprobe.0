Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F8FD525
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NdZnXhZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDC8C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699619896;
	bh=94Xn3SIp5KcSm4Ed8now5R1z4T8xMOPKGor5fGAYj74=;
	h=To:Subject:From:Date:From;
	b=NdZnXhZrn/ginqcjtVUusbqe3z3fvr8hhviPFG6pM21d5m93QD5C/QOjM+BYyl9yP
	 eqadqUDD+hVRYAxu3ZMGMrD3MoZu5GtBumO0Lc8aTIvYtP1WfFyHvsQZsgp0+sg9oP
	 ujBRVa1wtPGa3GV7e5xvYvcY8yHGpFHuGGOwtarr0dZrUdmh+wB1l81d4yg0NfRGKp
	 yeuEXkYQGWyP1+EZJ6ppW0ULbdQ+U4gIwOKx7XEC2DSwtblBBTkXFkglAVhW5d2JnO
	 lxpankGGVY4jh6H9Hm5h4W+c7pL3ZTiiW6fs1nY93xF0hIgT505LXcgM4IxJ2xzEvc
	 pAulyhMNapnhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8083EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169961989650.31896.4666958571221235034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b826338be790d53a91b6de27f68d42cd0df56365af380857e9c10cda1f0c6749
Date: Fri, 10 Nov 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699619896
