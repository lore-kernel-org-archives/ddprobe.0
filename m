Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C440D7B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 652C4C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666650653;
	bh=r2IjBxBSVdDzyqB9YqdrwgQzKjr/rSaTZgTwn7Txcv8=;
	h=To:Subject:From:Date:From;
	b=CzqUP6BIbaDmD1dhn6IHCUGi4hIiNKXgCNPBKqrgxvukEEfhpw4nu0yK6tJ60lctE
	 94bKmR0cFvswLRGg4ofc/0UEKb0tNbutAQwUSPIQkakX/XdyghIZmSVhx++jwMTCuv
	 +o2S7PDcIL4UdJxgp+Hzap2852PZi8UKHLnzIowFNyYP+HJDg6aWA/MSmzL1xJakAN
	 F9DZfJ/pyWIn1wis5AmjLKiQL6SejNUYPzdsmHv+pSq55oM2KrRFk5jwIeOnGkoHKD
	 NYWHUk6il551IHIpazEkrbF9W9au3OFXfAuGeWCua16OVQH2Qin2fwbyLcjQFswtTi
	 qR15LsaTKsOvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E971C67871
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166665065331.4081.6379370326507313391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f403dd86a7b73e5237252649a55db96ad35201f6c663c69f72dfe913c90c15c7
Date: Mon, 24 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666650653
