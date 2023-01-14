Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC41F62A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90973C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673656287;
	bh=X3La1HFhey8eRujeqVZLjw8A6ugZoBXCqp72duslsVY=;
	h=To:Subject:From:Date:From;
	b=k7bdUSVj9bUvvOjJ0+Bqq5wmBR0qONFNu3V1HIyXhxoxeBK88LK7EzR2dA7L9xtRC
	 AshN6KDcj4Tufdd3Bw2vrmhookR3ao0F+N6shgs2DJLsOun3+hUJl6ghfnNrgxENZO
	 kuiMx4ZwMrlG3Vp5cj9o70PDD0KsCb11TnuTV2DmUV96X71NRFaNLaMMJTljwRK4GT
	 Jl9Y4ByXYY+OtekDEJ2axuhVzo3PQbM0QaPk5j5o2ycUysh9Di7+9Vb0ns5GaI4AGo
	 74VpVvy/BWAb9sziqDA3j28pfIRkqeqGijH1U/a1Vf2I39v4UEtcNZ2hzYDjtWzaJ7
	 rEStVfn3bpAlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79CF4C54EBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365628746.9011.5456704357338701662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b414a68e0c160e717c289b63401f280602d5c33a25928d1ba086f39caba64445
Date: Sat, 14 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673656287
