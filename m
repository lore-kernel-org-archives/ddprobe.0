Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC85746B2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71962C433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661638852;
	bh=6oRMCs/f1PuEbwX7/hBihkRqpLuN4fdGz1OgmcjPVvQ=;
	h=To:Subject:From:Date:From;
	b=o9VKvD6dPcM0h21F/GQxdohMpnzyXx6vaWadB4FfA0wEQkMds1baGI+fbFk/jfExa
	 gpTL7UDfiYE2ZIs3e9HKFa/DCnjNfX40BkAzx0Nv9uCB8AyzHzE95MwfCrVJG94g0s
	 gGH6Eam3tZClwzUNmuf+vXlmA1JZPYKDBaqhaXJLw8awYHIibJUG5erNKZFqgzyWod
	 wR2V+cqOcUxt/1bH5vWZolwuAvhs0AzRMw9FEsUbXGsfj/7PgNBsEX7IwXUthA8Jv2
	 qIlHl7dqbMZxiWBxOAJbMuncur6X91zF6ZQTxog1p2RqLXtAh0IcN23i4nJGNfjVJ/
	 xI8wFt/qJ4c1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55ABEECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163885234.12350.1594674963108795087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8583db35395e5c0304af53d7dcdeb41071e84cb1244f31310a30d5893b3fd559
Date: Sat, 27 Aug 2022 22:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661638852
