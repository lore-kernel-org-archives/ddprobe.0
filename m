Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E927C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB33C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663796453;
	bh=TIIi3LEiqsKaaoy21omklTbdauK+GZy6PlCrqXzaJOY=;
	h=To:Subject:From:Date:From;
	b=M3ESVG/odZL6eaciLuj4Y6DUZw2xlDncTxWxG6jMQ9jMxSUk7ZIawV3Z7V0VrZCww
	 y+li5PkepQYYN6p1V/HnsTbZ0/xX3e/Kltia96w6e1j27RO0XhGUf3CoEJ4f4LrK6d
	 yDWkBTNmxPaPYXFAQA50T7xj4yGetcexN3T4qHobbFAYs0gHALTiiffRjDfos5Qnzd
	 eqfoKu6P9fKDU5j85qqdbfXQA9DdtlS8fMk23xPj5SE/vRdirM4CIfPv1RWGzv9S2k
	 Yq72/y21ZM+pujxVz7ymm/KmafvR1r/FZE1/NChE2rBqVw1siAWYfgTB6ZjivWOZ5V
	 0KJkNQb0K1U3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 546FFECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379645333.7255.3309021833108355843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af49b8bcff4acc4c3a9c1a2ecc5d05a61766e519563c0975635bc2ad15c10b88
Date: Wed, 21 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663796453
