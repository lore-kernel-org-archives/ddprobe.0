Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77FD7C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F078C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667655654;
	bh=083/shL+qwmIt3CuUR616FFJWEXFm2f+xyGA53UYYO0=;
	h=To:Subject:From:Date:From;
	b=aGSERJyrZiuGGiVFUOm6MpfLnmEdM2HpC4HX/nBI8qUZzivAMEpDWnqyd2Z4Av5pT
	 XXemJppBYackLZpILBxxJGIbocuyJOJ/AC4iAnQsQsANk2PubkAtUC6ouSs2vVSlPf
	 7Du3WEYlm6VNnNKZj7ofhtGWGH/X9YAjV2fhHA3jqy0pp+HZfr1LqVQNL+7Lu7ZTEa
	 lLWXO+RA1pPMNxM62mJ9h4Z0UwLSTAEZgCdQ3ey8l75rA7KpK0ZNDTSnW1C8Zf8vtb
	 4+2i9jGlq0tb/ztGkqklMFZRP/2hqsh8RC21noAHjYB/i9xqE1geboQO6px4V9xKwl
	 Zf8ntP8aRSSmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E2CC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166765565433.30878.4791558743038450790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbde6f0000ebdc836126d56303010f0d005e19015492f0618b9f4818244f4ac0
Date: Sat, 05 Nov 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667655654
