Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CA67C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 06:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3527C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 06:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686895748;
	bh=NJd5XHayz8lKe1aY017KSbl2Hh7otF3RPziI+Ca1KrA=;
	h=To:Subject:From:Date:From;
	b=QFHwTJV32Tk/AYMnjwiL3wbcqUxuJOd+X8FWOOd+cyypF9jJtu/ueri62+HHC42k4
	 MGJuFHLevs9CE1gHUPQYWRSzOHqimwCWRxTI1XAjfGM9rX54JQYS057rYCsWkjagoU
	 P52V+HaJKPfXNCRP49tiDKJjCWxgBBKiSZfvNmGpmFMAiugcV/PTjUDLfQ2t0XIwyo
	 4IZ77NAfKcCkxzTYoX/z+KO1yDvO0IT4MsuX5G1Kd8Mqut2oe2gaMF5tlqLjfe0Upc
	 924eQt8pNN3i5yYmMsO9z7cOeu7/n5Ya8gc6VxsI215MAUL50wkIiX+UE7rNmqbuwZ
	 WumwWkQczQaqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5339EB64D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 06:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168689574872.2933.7116792604097893441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51e8c59c0868f66442dd586883458d1ddb642c50bb0fcac2dc0eecaa80b7373
Date: Fri, 16 Jun 2023 06:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686895748
