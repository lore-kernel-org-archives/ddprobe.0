Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C69217F8
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTDA71U2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE27C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702826296;
	bh=tFIdrV5f9RYyZBXn9eXJOaPx/ZAj+JxTzBG98hM0GX0=;
	h=To:Subject:From:Date:From;
	b=MTDA71U2VNqgpZ2ZI7TBO8XNFZesCAp9owLMutKJZF0nFzYK1CeqUxJoMKN3hdD/n
	 TnnWAwyqVBxSzGZvmRLBuoIYCW80Dr+809hzRFt2nNmdHkfAou/fWMXxkJKu4EhiQL
	 pk2/mXrXCjKPEjUn8RXHUcq6JD5sT+KP/1A0SkVjAmYUULuYGoPRR5bwYZMUSZcMK8
	 X6uExVP/Pr/ZyfENR1yUzNcjXVyysS5XSiDsGyq417eLItzJwzzNwMnd4JeH6IhdwT
	 gVdePYUusaVwfQJKl6LrAv69h33zuJPmNTs1UkIP/Wcc/0GYyYCVPNAoLpKdo1muIa
	 MobFqPrihVCXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60658C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170282629637.26292.5530894625662502606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6595b5c4df7bee11519750b75cdc36581384800e878896dca43d2a53d415e76d
Date: Sun, 17 Dec 2023 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702826296
