Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD96AA42
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B41AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670635287;
	bh=WklNUxhoeUCvIkm7q5Cd/gomHHQzkWfdSbRDEw5LrCE=;
	h=To:Subject:From:Date:From;
	b=BD/1JaAWQO2PATvOKrBaY5yIBfNhgDbLNjMYmdjNLQ50O1L8p4h54wWRpulnHEzO/
	 Pb8Fjz+U0peD9BKDXoogr2iRgGxUbE0oMtFmhwSLH629F7STF7WlT8EN3giGHUot7A
	 Iz4K9sNM1A+59fhEMGNYJM7RGplXscOiyj8uyl8HeAEo1Vx5kFxxNSrTLL6UTeKtXF
	 Z8fdc8riv8FclLZ5Gb3iTqL1uUWw/vHXV8/dBZbHzsoiveGaAQKc5JtjwVclDyPOOx
	 hYc/PGVCEKW5cTXQvL4p0ebRmJOube/FjlmDcMTVQnw/mt+qMktKcRJnEIyZXwQLM1
	 Gb/XHPCzmYdOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C08C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063528740.6241.836269819288413360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672cb82446232c15c2579bb65f1f18ab60666fc66d8b310e205c6e6596188127
Date: Sat, 10 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670635287
