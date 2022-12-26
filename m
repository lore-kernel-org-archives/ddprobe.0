Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB522371
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83165C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672022487;
	bh=ilMtO6ZuBjuj18wHHLdQcYNZpxaUvCuHBaz0KxWjP+4=;
	h=To:Subject:From:Date:From;
	b=rhGvRc12oxWpIGp7bFk3PrToqJfEFvGFPLQSK8Q0DK5AuOaXH80zcByGAperJhuT3
	 duVgPsEWosvZO/5l61URiITNAAH2nkQD4dbH/GYhax1uOYjHK3ERWh/l3i4TWLdMsP
	 Jjwk0lz52ROzbOi4cqZ51wfoWmZeak2jK24Ep7WxiT9V8lPqTOwKqa6TbmvMBwbNl3
	 MXHJaxehHOI6yQdlfAAYLghPsbMEiXIoYgRxuruyOlzsbLeKAU2K/0F+g/Euq6tnT8
	 Vvnue/rACo3izxrwKHuLg6pYK4ejsbqCiNq2SrAUTkW5Zo8ZOkPKYR79Nc3Sr2g7ye
	 A68nP/SvEfm+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644B4C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167202248740.17253.17895542307254322034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed77311144a21a2ebe919e2ce4367614d218a45064c0da2dbc7b4371741d11a6
Date: Mon, 26 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672022487
