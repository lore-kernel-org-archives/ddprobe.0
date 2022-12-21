Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FDE7E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E74C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671597087;
	bh=3PPHhObh3cpYKfxXXPLBv5D20pUAez92dSJk7391W/Y=;
	h=To:Subject:From:Date:From;
	b=rELCC65+urR+xE3siYO/SVTrYlHFbBqG1q8DvBaHmeWlqlhp5glgZKYxKF2yyNpwf
	 wwwcerKCR1N+dtTIZNGeo1HlA9r6/DnuqCJThsem+rzCd9o7fHEa8orft7B9RE4GjT
	 usy/7XPOQ3SqXYeyBtt51UPS4UnTzgr0AyslILqdtAdF/QVQSgMfHZ8hxvJ6o3OGIL
	 Lc0F0QWlXrvZHztMMLvFKB42Ns4F9Oupc4/QYcjWy1h1OcA3ZPOjvywGeXvjeah1ni
	 hVupl35FBE1x4BD6kcrHiixXgr1wKOZyLN/XIKU+BG1E0h7rCOzbWlzbs6nwbNeXa0
	 U9+0HJwVTzlow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2AAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167159708737.8280.18018164843750149219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895ba921c40a73016ae8570678d032b4836befeaa8e2ac8d7fbeef288dcf6d21
Date: Wed, 21 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671597087
