Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AEB63C
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E65C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665786653;
	bh=TXOgdIf3dBWEh9MAL7pjPYaXs3wq5Sfg2f0D5B8f7i4=;
	h=To:Subject:From:Date:From;
	b=f3KKLlmJAKJ7+lYZ+3HBlTx933APy/B0u5yFplBqrr2aHh3OxgwbnYtPvb+ywG9bG
	 TgItCYvd+f5Bmk9OhWF4yxr5oLSiEcrGLNsbFtrF8pH/RQOMsJaYzvAFK1Gjn5Rwjs
	 MyoWsBDViT7ACelk0+GjFuzEwQyZqre3dtdFbjmydkIeTXct8x7aLtQ9uncedIVFfi
	 +vppZJnCvCHctb0sITVXpleNyqLTbReabGKztUfGiHISesuggztHurWNOJfub8tOWk
	 ZdyHbSNQmJulLebRde7ZabTq9TL421FLr+nTzMHusUAV0wnbMN8g9baX5b+UjnhXAj
	 0ixh7kqYWJ0rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B8A5C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166578665336.31672.11659547830165736974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a015b2d2a94083dfd8ce379d407b8eef103658619e420d8413b13bba1df071
Date: Fri, 14 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665786653
