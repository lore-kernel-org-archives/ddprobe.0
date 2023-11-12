Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1567814281
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUp6++uX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B39FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699803496;
	bh=G388pIMHMi2kAsrMZtA6iHmjyv/pqnvfOmgxNpKb8a8=;
	h=To:Subject:From:Date:From;
	b=LUp6++uXv4a+JoQi0hAZzBM8s8iIgPnQhzZAzE9Kk81XAwOJgiRBE9H2p6OPEwJsX
	 1rEknpfIaKNarh+ymY1dNAqKI1md/XJ/IC9ayPvz1dxW5pH8bXC3QfsZUDbdBV6g5g
	 ebPsv74KDU+XaRykZf2J+eWs+fZIylZ2EuI/KHIkfk+PMHue3yO0MMgMMcXcEUDBE8
	 JOuFEVUcSXZEdVAugIF9QxQzzZ8HygdYWlBhFHofTh4og4asvWCiaDwW107taZDHWl
	 VED+C9+doJ9nAoQZ01nEf93yN0L8D1rj+b594ro+4wn6hx6T/HrVlu4CfIFmtrRY/Q
	 r50sWbPldsr+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF3EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169980349644.2079.17977508547735193552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1718168b5e01d8612ce2406051ece5c2b43c2cb9ff30b0a90f6a853318e39d8
Date: Sun, 12 Nov 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699803496
