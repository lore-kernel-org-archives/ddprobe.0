Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049E351013
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZrp4UE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D36C433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701355096;
	bh=v/+s6DXCeGwjFTbRgkvywqOLNCwORe8nPFTK+rDfeys=;
	h=To:Subject:From:Date:From;
	b=OZrp4UE8v14Def45TMby/RJOBo9YKR1ytxaHMgETUKgtQes/ImkV73Vx/SjwjJSDP
	 j9+QVpOyholDt4PruqJ7E428Dl28/51jFxpQOdsQRydNQSXUGyPQgUg4Ghuwol0LaZ
	 SE1EhBfhUudOqYuEZtlVWknL+jtLKKof3o23UH6BL8gvyzBxMAbrycXA7eTq+USQJm
	 ndSUehRE0GFin9QZzbDrKpO4sQXYXNAO0tHh9QrhDLqPIeKx8cu4SXp8d5z8HyqJ6U
	 Ahqun36l9O1RCj9iFYnaygPV1RQDy32FkE3hTybNaRuRX6Qn2GfNJogNFzWP6Dp6gI
	 C6wPQVySxqChA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F0E9C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170135509638.2544.7410853489992627606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53662504070318c7d21b223afc3e1fc736ff40b709c0d004be7f35021f07f9d9
Date: Thu, 30 Nov 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701355096
