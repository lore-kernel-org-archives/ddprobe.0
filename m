Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046302564
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97038C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672481487;
	bh=x4GRTtqbeycHTTvRMtf0MHk5l1JJNcRmeQtenPlTBU0=;
	h=To:Subject:From:Date:From;
	b=tT68Ha6VtFb/aYL7W+sQZ3z6rzSIAjefAJrWYOJFAQPi1jonzKVSvJk10nGgVHchL
	 FUOSUA3Dj5BOmdKnr7Micta58K0k0P1QW6ITH56qlqThizH0g1RR5GyHwQnRVywgt+
	 d1Bz+GFZeLycfROubmMRxYHbJ7ZvjHUX8YER4NHqUHkdUUWaF1MOcvH/3+bfFlQDXH
	 3S3OtjYyAZhTQ0atZ8y5kwKdDjsUBTJRfHMtCHCfxlV5KlZ8MEAvF4skf5GUt6CnBb
	 Msb10b0pXiuuOACoe6R2wkSQbSUoFWeXbPsW+MdfRdB3/TADtWW/RHKYl6IerUWglD
	 5iIPuAfLwVODA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76947C3DA7A
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167248148745.22300.15525750909438924680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec348751078fcc81ccc5f1a417897a270d5de90683513ba81134c084ce9a0a18
Date: Sat, 31 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672481487
