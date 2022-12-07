Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DCC8F4B
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 847BDC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670454054;
	bh=DBwbkFgADoWqXgH1TuWf7wzhFLSpI3bGoEj1/LSEkZU=;
	h=To:Subject:From:Date:From;
	b=JvBhX72Q2onklQZrj9LFfs4isqH0Hjtsqp6Sf9Quu9qtPYvSz8TnF9yFL+hJcKafA
	 D8sS0A5Ri3TFRJ8BbVIViSJp1Nw+WVA5GSTRL4H8NmfKbNQGkYg65OE3mXq6sMC1AL
	 oDApwDU8LYKgR4u5LpT4PkmPWNtOEbrvRYgq5MzarY18wXQFshQb6oXygdi4CnD9Vq
	 Xxm5EskZ60IcLXCBylqaLMuFnvfrOpybICz3XloEd9WsZnKrwW2Gbd2v7Wr8HZtKmx
	 2yZll5H5xa2BXrPy8Me/V9ZMecwt9hE3UhJL/swKHSoiNjytMnGKG5sC9Rol5nHwao
	 zIYrrPQQvVEwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6938DC4708D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167045405439.19336.887922597748811246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d3ee0e0d8f27827d79023b0204bd04e1c60ab11c032ff2d874ae6ee80ad398
Date: Wed, 07 Dec 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670454054
