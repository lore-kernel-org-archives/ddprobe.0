Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469961642B
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 22:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7755C433D2
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 22:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684792985;
	bh=HWLOH+YhjxV+b6OlGpQlznamn/0Ctt5/9tgQduSFYno=;
	h=To:Subject:From:Date:From;
	b=AhIYRkns5VmGHXoWUNUGL2fdZWIrGLvZrILTjPCFXod/vhTME65jHXUFkSyKqL9ko
	 klrohlMdwxUkHF1HpRdgY5yinmTwXZuGeOqPIKATIk/oWAKMmUNGPAtBmBWz8v8oJv
	 UTQfNm5fBxvuQ3ccSkbbZVeP3YJpsRAyNLQXdzunSZzmV2RLFSqWRUx8XaIWR5RYr3
	 klTUQZjlKoANwvxQl6gLPMBfHtJvY2M1VH1Uo/1OFF490V2f0XxX0Odw6K2P2u0R3v
	 56xo9kDgyJpsytGXOkNfqrhXUfC8fKy9eycFs2y1ROi+MvwiC2G709tT+e/NA7R2Q/
	 +5XlKezn4EjZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE7B3C77B75
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 22:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168479298583.7473.9025152844401151586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275c7d538e5d17593030cfb2a83d942ad18f0356ddbe2dcc473c13071688f9cb
Date: Mon, 22 May 2023 22:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684792985
