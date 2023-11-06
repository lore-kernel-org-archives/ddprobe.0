Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED596525F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpdMNAhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826E6C433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699260496;
	bh=/vNPs0VricRrWFoDUI74xuOD4CTs3Nq5V4KEuz7OHa8=;
	h=To:Subject:From:Date:From;
	b=TpdMNAhAnU5xMXoDON9XdoC+9uWoKOClXWzz3NWuhbR3ostynBukW8M3Los8pWNOd
	 t0W36gPXA3DyCOgxS9yRKNHPrwZYvcsMvPMQgb5mwRH9H4/HfSEM9u0z37nJ1tMWpr
	 kZrYO04VAEkXO2yEPS+bCMYAtpZ3y7oZuhA0S0jRVPVudi9xt+2w/57RqNx3E9R/ud
	 4aCw00qXL7Fba2rH6RrgEhhjjL04SZuOaojBZColdTLUncjDn5oRPUO+cNQ63C2xIo
	 9HXHY6OWdfjqoXq0e9yPaZ1RoUQ+81W7fcXd/VE23zFSm1NuIlGoRhzJRUD3mZDt7K
	 lT/nfA5IsyjJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D47C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169926049640.15688.7404401063131012208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd12b76e08a113ced5787ec78790853eafd1379314361f0508d6e27c3527fce
Date: Mon, 06 Nov 2023 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699260496
