Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78572200A3
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 13:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9979C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 13:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690896128;
	bh=bihzH8c7LrPpmTlL4jshixdSBPyhE0tbym6/4mmXeag=;
	h=To:Subject:From:Date:From;
	b=rk9+UyxzcGihNAX4tT531PoYpaQimK0MwB3R70AbPk4bQrD6NZU4JTRqNrjuR/0nc
	 kELUY3nY59Zs0xirkYugxbTDJ375o6Ex8lIGCsc3IZ6idszdfUDw5zPcKyqCeWgx3m
	 ZZH+HUKBIUoEi8w5n/Xa2B8PIWhFCh+p70G0J1HvRPL+Hvo9Z2Nd0b6hUe9yddj4FF
	 mFTaFhq/f4pBj9+WdcYTMqR719yNer3Cbyz58MN1pGxhu0cD8eKdODS78Zg9ttkOOC
	 1OK9vSDlMAJtbdV7ehYOgVVUarZUqqBvzhzpanC665L+H5XK7fCSovNby1qQR7UgBo
	 /igQIsFKv5cfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEEEC0015E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 13:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169089612875.32262.53288107657846674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45de59c029d5593c1361ed9acffe6a1057c64881908fdba1cf05195c2154ed24
Date: Tue, 01 Aug 2023 13:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690896128
