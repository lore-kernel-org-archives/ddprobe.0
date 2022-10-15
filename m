Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC2F2586
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67FDAC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665856853;
	bh=N59KJSXzUaEYnlZn9QANrRWUWzrqBx3jJ1PNZbLWvj0=;
	h=To:Subject:From:Date:From;
	b=kHOMFM0cb45SyeKHMzaHyz9wBN2J957LoeMQgNd+XuS5czOMrSlxa0KgcZ9AfZ1nY
	 d28XVrKZ89oEEgVxaOF0MQfgdVDa+WmdLWRUE0nbe56u9Yi5bcIdUE6/W9MGLxNxaR
	 I7z7pgDq5Pyn8WqyPaUl1etWZHY4WErfm+CQ6godTy561GGfReX1+/4A8wK5TB0JZq
	 kFVrFPENkEKEqS52izIchOWcKaR0rpQ7U4JBQ6pa7I/somnp8IYyPbjq6UhVFgsRlM
	 J4SjU86aVTsC9SeHmEU9nyQjNX1aJ4LWaC/lk4GnHkd0j+2UElveVbuQUC4fsrjz33
	 uCV7yAZCAjQKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52891C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585685333.11232.18052318303870783205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8036a9a007fed98cec0ddbc5205a1c1fcd11c8ca35e60a0b8f119b495e1a007d
Date: Sat, 15 Oct 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665856853
