Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34257B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 04:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6929CC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669955454;
	bh=MHBig6OvkJInN+hv4mCQiSxb5LpbrvAKNO7chMSrnV0=;
	h=To:Subject:From:Date:From;
	b=Tly+IEhB6NJ/n8Gq514tuLaY+x+wk05KJ4lqotbevf660rJbNU3FDzrLGOg9iOZ5m
	 vUAVuXCamAbS94P2XjBcyFRWMEsTCa9P36seePDxualOfYDxpjOhyuNVU1U3Q9JAdR
	 DJleivDnl38JlxBrYAtNqfr0ka0i9ezThgkmGJXuGWIV3cM++HPBh+yBF+JQC4+iGX
	 wGCzrNL9AVUXvxw3By9PKo36kejxUGNc5jU3FOCc6dTlT0gHwMHUm1sFnXHlYvKfh0
	 wEC7+awhi2zAtQGUWyBsa5kJ/Fi3RGnzwy4L+Aj+j4o/pXCwusU0vAfxZa7uEPBagC
	 JaTcRQLABZ2aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 504E7C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 04:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166995545432.28575.2205217868620944394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b111fd6eadec78af346e094fe616ef07fed27223e349752641689b09e16e8cdf
Date: Fri, 02 Dec 2022 04:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669955454
