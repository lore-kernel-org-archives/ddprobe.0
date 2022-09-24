Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52ED17E6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F4CAC433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664034053;
	bh=TFgS4RSt+0s28tk3eBjbfM2qlVeOra8U1ux3C4EoJtY=;
	h=To:Subject:From:Date:From;
	b=pKtcOb3ecn9OicsbaQgka/xpzWtukrqBL2dRJwCJ6SFC1tsYoVD7smNbND95erEmg
	 vUfD9y0cA+tpPSlGm12odC5qbYvPB6+O+yRKnoYSW8/BoYez9gWNDRdyBZ3gGsAJrX
	 HPLCMU0Cx5H2Pm2ljy8AKapYa+PyD3qoMeDApO9SagfehJHPARGr4JgWR+RQVC2OOa
	 cslAodo0s94ZQDEbm4wp99FhXiBs25fd2rFcnF1ncDOZwJexNqHYoIHPzDgCYe2KT9
	 bWzvvRp+UJHdQ7k3VESVAMyQbVtAT7do9NjlsSEE+g+k/9mTgV2HIAofqy7yCpIDQ0
	 pfNz+C813eI/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6134FC32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166403405336.10340.8532013043226806012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5949148c775e012ced62aaff3e81ed7f20b7217512394c7d7823f55f66d658bf
Date: Sat, 24 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664034053
