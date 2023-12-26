Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140284EB50
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw9F8GPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B3DCC433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703599096;
	bh=ML57bKsCDuJPs5A+1yw5bje8Lyke2eGrPSib8rmdQ1Q=;
	h=To:Subject:From:Date:From;
	b=Jw9F8GPnkqQXUVx7OJf1pmLS/VIVQqaeyrIcTZN6wfTwYz+5f5r+qHS1cl2dgBqGK
	 10COz6Rc/cSMhhn8LyVxhTxesCo6SxQQNyO6afE1Z+IYSDznP4WJG+jVkETzvFcKLU
	 jY59jR6R/ZJUoCDZ0ScHMHu4W4zhysFJhIAiB9XPbNPQjuu6pelBTJQwuEOd4fsIMZ
	 uwM8iiwuo4L5Uc3CTQ6ujSDqcxDifr+8Uuw9AFDPNvYEA2HiGnBw1Ia3LbaqEA+Q7Z
	 IW5xccvOZlNFOWEDClBoXYUp5RHofQeHYHWcNWeXiBCj3FcxiIkoIrlGAHGPVNFNK5
	 z2RxstgD6Ycyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7050EC46CD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170359909644.24220.15423693534068497449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf14c66a985d7e960fa7c4fbdf2320af5ef1b218a0ee05d2fb9b63ea57989440
Date: Tue, 26 Dec 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703599096
