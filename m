Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91F71C03
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A123C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663712453;
	bh=iPrdpOlWK4epFC4bXP1CtwxEb+1egCnGELDcdNT6JJs=;
	h=To:Subject:From:Date:From;
	b=LiLYxE2RaACpNGqz6kYbBOsoxfNr5slNY2JLHQkBbf48CQ1hvchjdQca7eQzFHgs6
	 f5xMhJeTYAjnwy2Ee2hbl0bMrC8rO18N8hJALLhVNxlsaKDW1Z4MOs39x6TXIO0CqR
	 C5lEFO/Ru8JkFiSxDXH9y8fj8XZkH4SV4f9kkiWuwIGA1OpSi0Y9bXtXp1cedank1F
	 Y8efMynCVH3ZCDBO7EXWhVttgSUzVaXnqS1a2LRaXuDu/rqJZrrUjQqN7eelktCqqH
	 XqQTb2aP3hTq8fCSM4xWHOv9OXQhADVS+fmMPXkTSGpySGqjHOKfQM7Wd3uGGQD06P
	 D4017nufkj3cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55568C6FA8E
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371245334.26117.10492868447457859228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab441d657ba0cd16358289b57beb630cba1fe12118ab8389855160a7456a8b5
Date: Tue, 20 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663712453
