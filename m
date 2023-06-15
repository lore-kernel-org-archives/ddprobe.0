Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603B74431
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B93C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686817148;
	bh=6VSklXtp7vvy2o0v6GOjpj3scyxX0GEULr+ABmzwOV0=;
	h=To:Subject:From:Date:From;
	b=PiwyHrF4sex96uZdwEFNBiHmt11VFNlkFUyZDbdaHzc7nlqJB9BvcEFixBz1F2LdF
	 AjRQ5Xz9B/LyK4rN7VYt4tnZX09Tn2aG1pPCbpPneAYLbszpP/8cbHxPAnxo1FZ6cw
	 3bs6/a6OIlNg0gwixa5j2QjGM97hwjrAyME1AGcOq5IWTLFBiA3gz12q6sZQwURnnZ
	 I1LpqvHtEfA0KTnqctFCaXIvPDAUj4IL1EurT5PHAk87XLvohPg8jOMqipk1znHDNR
	 xmfBuMX93pi0Jgfgkaq90MA+PSZ30IR22zKerM4UbOn1cVBepJXBDmd89jn9vrw8l5
	 89K115VAz8ruQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2672EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 08:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168681714870.5393.16504201912931234971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7287078ae19be093617a718490a865e3b3a8fe2d2377ab183cd4b95f183ff5
Date: Thu, 15 Jun 2023 08:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686817148
