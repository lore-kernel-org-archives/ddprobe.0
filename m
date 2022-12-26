Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD3663B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 969C1C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672032087;
	bh=uA2VM2uVy9HKtCHLB7PphYVgjNYA2SQTVytLXfulQz8=;
	h=To:Subject:From:Date:From;
	b=SYWEqnBoH8mMelP2nZA0+kQbMZ3CH8jDWVPqVayhTMTqe10F1JaxiJJQ0hA1AB4ZA
	 hvrExG9atZ+WSVQ697KjhJGP6ryOAD545GVVeZW3wgcst42i8shZrCpKtuHN6lzDua
	 lFYzvir9Yi5uVjY3GcunBcXeHVMoBqf3Y3nB1FCij5aB1u07aNtBI8XI4DGGplAFZd
	 9x/XyVHlz7tUlH/z3XoUyBcZYoZ2R1QITuyJKb9G8bYNNhfveA0lQm2LdR80kaLrp5
	 AA07IRviChgn9pAOMc6NwPf8YFbLOjtZUCHLCJRC3w5H+Pgh1Bb5HjRPa8jAvRf6qd
	 wZg6YTWm61ylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 770E2C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203208747.28621.7675555872575561386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f40392654f4aa163fb3129fc87411ec74d878300721b56659ddd48f9f69ce5
Date: Mon, 26 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672032087
