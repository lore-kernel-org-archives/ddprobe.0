Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F82B8F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F2CEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680297786;
	bh=cjZkC7AR2OQc4J1duJeK9gpQFF25MIid3QJJi8zTidA=;
	h=To:Subject:From:Date:From;
	b=ePbuhZZtKhauRBIPRoY/ys3ALGHKErL/cu7+cs1ej3f618RSS7O2jyVlgOEwR1bZa
	 xwNKpQDD/EwNpgSGwe2dp110cYNCS0vYq/mgrELXamFLREtKqNloAKBRwB2Y84H2hV
	 XHniGrDekUFf7/pjAZ5oLsfKL3BUwRZcaxqQem8JKuKgdbVDxVGKHL7VhR6SkZlpM1
	 c5b/L3nMU5jASl64q5W9H8q/7vFqe/H7iGMXo+mnfPkhP9qHP7w8onOUsqPNXPy44k
	 byFP5+bKEk2jcwWD0hZqRMYjyjcZwGXu0m9oMYARgb2ulSkz4Rl+DB6pjirGDuOl+3
	 /thrHq89jDXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFA61C761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168029778590.26500.16871248388968148020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d69ac2c647f42d9bd122a19beb0226891556ea321160b791a063eee3445c785
Date: Fri, 31 Mar 2023 21:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680297785
