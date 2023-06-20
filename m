Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DB7168CA
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0936C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687273928;
	bh=vxwk/Bkj7LPz3DKl64oddZs+Ty9Z/Nw++SbliiYlvMI=;
	h=To:Subject:From:Date:From;
	b=rXBzhRbaxSUZ4hp080Jg+KkFFWl6RR9hnnx2JemjuyMXtRY72Zeqq9WsDiMmOHvBG
	 vJ701RycUjvl+2feWXo1ir8CkdDEbjgoesMEXqKW1fcev0mS+icTMyjVw3c7GCLflr
	 PgdS/01NRPfKDS0eaTLfiJbjyjYeBc/p4NxN+cDLHflzbcBkcf4zRJWcaqwjmf3+/R
	 6FyGXUI0o6vPOC/O7lB8VVDbFKIZfkF78Kit5UlsVL7Pnth17UQL12AzfKFBb5OG71
	 UKnoiB1ZpPzsOw6AInZJuqAE4iTvrM281iTLstXb1ilm6WrKcZ7XGR2hn6iNuNnprG
	 XgSpIu3OCr7uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7972EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727392874.21421.18175100951212287384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cdc9174d6115b3f97d9662ab1f721efdf38a0851c2f5716a7d14f4cb2d628c
Date: Tue, 20 Jun 2023 15:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687273928
