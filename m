Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09557F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A078C433D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662958853;
	bh=5rUz/EfC9gBi/d1csJW/H8yr1krPKbK6QNeqz6uo2Wg=;
	h=To:Subject:From:Date:From;
	b=l6LYfZdeyj4s5V+qO8UKfost30CxaTB5H4aC/50aut797ww1fTo107eyO2ccmYdiL
	 eHD/6XQc5XxgY7xVa/4AB/W4BrhMirddqvPGqS9xz8LyE97MENu6ZEaCBOQrAextu0
	 e4Nv2zGWDobUqBJURn30aX/j1HQa4Ol3qQWERwavwJ/0yRlmSgQstWcpfYmiQzj4ty
	 7UA3u9rI+tn8i9NIzMVQA8wbigfbmjgi8ZSKkGdmzS2GOAiAWfdPSPFZY88tILnLHM
	 z7Yy1e6e0/QQEPpPi7/GOmAvxqIs5WoBkXRb3z6ijg/S+or287DfaY69XiEaxgLGT8
	 5bOM7l5+oTQBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51377ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166295885331.3898.6657059902076000377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d54a87aad241d9fdc59bbcd8b9677b759a6f8687a4a1acd6c9de9acd79a19c2
Date: Mon, 12 Sep 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662958853
