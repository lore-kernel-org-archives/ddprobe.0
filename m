Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02DC7C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805EDC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661746252;
	bh=aOksDLJdhBlYIVIfEh60RgAvbJEDNMhVYeFd0whhWFQ=;
	h=To:Subject:From:Date:From;
	b=NSOSIRzDQLiA7M95RrfjbhtrHNPQbP4frYshXe9EoOWkEjIM9IIFBOf6X5/F5bSv8
	 VxA6ciY39O3bGgGtjjJS71npjR0wo7n1uWDcx9MSh6W9VyfpBJSwi7D+x/e2HA8FxS
	 klEVzM/5yhY/0P6bLsbYnbWR2N7HRI/1VUuW27nd+31Wz+kcizj86uqLoe6CiYSSHG
	 RpUKgWfMkjPWv0xbwJpoaCPPj0/2OXWNN9s7fle/Fh6lzfAnEk2boYl2NmYjVv9IKh
	 Vx5mawKTEThiHXlJpmVzFVLs2LYUFl8REA5SkMmJMGp9pQdl3UUZRevtupXS8ySDoG
	 JSNBFv/eSmJOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6254BECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174625238.634.8754883137594058344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52561327679bbef3395068f6ff687d99166413e8772af946ccf9e8e8bb6dea45
Date: Mon, 29 Aug 2022 04:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661746252
