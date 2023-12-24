Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19454101D0
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agBAOY90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84EE4C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703458096;
	bh=ygutjVqrb6nVEJp39HtcM65V9XZLTKRCcq8iBc2LXhM=;
	h=To:Subject:From:Date:From;
	b=agBAOY904JhtbgcKYkEnSXRh1g1BeRJZ23uPR/31VwPpOv3XrRQ9rBBk4KwezQRx+
	 Hx5RN5EW3TZOdqvMPnAV9lIUfkTs5D8SIhNJp9KkA7BYf+6Apm6Vvl8SZJTLnxZDzk
	 jZ8xP8P7EjpHlBWAzUeczCrvNzbCayCZKZFcqQSLwEr1lEFhoWviyV2q7gbjLvwhsx
	 MHlytvDXjOb4b06IDv+fvEq0r8yUrmI0Zq4TADFcP2dR0ocGpdlTSneTI9dZgBdtJ9
	 UR8wUDXpF/Ua+GeV6eWaWRNda6doIrA2SFNh3s/Z845JLZxViX0wsMUXt85VzROuIX
	 J8zjwkcE/FUhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3E8C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170345809640.22989.2229030319532847964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c92e83b53e239a00bb58fd299c0ea8bcb5411eead9fa61781c9722f05a2642
Date: Sun, 24 Dec 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703458096
