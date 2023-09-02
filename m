Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A9217F2
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 03:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B12C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 03:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693626248;
	bh=9myzHvs1jr0wgPwxRz2ipgWMk/Vk0WOKHz7lttwDtD0=;
	h=To:Subject:From:Date:From;
	b=rkAc2AFUUEywpdR6NNT1iiDmoWSOYMNHQfXVef36SR7NopiPb2pTiE165h4G4KIZC
	 6QvdKIBxNGAVZhEEdj/wXMgLaZGsZiW7QkPzUMcXqpesXdwTEfMw6Qy/azCdQFZmGZ
	 pOWxCy9CGmF0jXyvt5vmYE/n+fz9WS7GU1+XREhf8FyFkEgwXLeZUsjTvi4YnnrVn0
	 iQR7kWNW0Bt08tyMQflC+zdf+6nDkv0oERsvrjHGuWF5NNTbj9fplJzHiOeUcbh4sq
	 +DBP250w+PSwsH0+yPnxBXgZgP8dVA3lg9adFHuk3x/VW3tikoiF46n2C/cDlR6MGU
	 MUF8telAy6jbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BE4CA0FE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 03:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169362624866.12714.793056741657422401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80499bb5540993d51b0a726aeb5aa998d65949b73f9468b9aa4d95c955d464c
Date: Sat, 02 Sep 2023 03:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693626248
