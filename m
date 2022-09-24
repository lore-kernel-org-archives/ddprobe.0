Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B014917D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A707C433D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664013653;
	bh=GToLirw8QPgWhIrUxHaeS7dnGS8jBXipJaDcB4Knflo=;
	h=To:Subject:From:Date:From;
	b=aHYqMfAbwbb6hXqMfRZohKLYS3iVvVorVqmclFOzxk8hpy2xCu50ugyWHeQvG3hXN
	 RujjTFr7Ahoxl71LLDWliMYhUdUWqWOztNgmcqM/vLCXGS8bjcgItSoXHkL0UeVyLl
	 m10W+8gv8FHZO6TFcw8fqHGJb4SaNDRd1mi6yqvZ8Uc2KSKBDq8NG/jKnMdYt6Sfso
	 1rAWL2gEmkKpK5F7bxKMs+0KGClVVR8AQeSMkD9WqEp4QheOd3vbib2WExBkb8PvnA
	 vUznzjf4gu7GF29JdEDAirM5bniQ1RDtupKSImJHYOWAgwHYhcMhtcB9/xz0giNaVo
	 MoQ9r7QOcRvvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512F4C32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166401365332.32398.18181079610465976293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f6004087fb56e6672adc15e59e42c3933305b26262864974b4fc89db24aad30
Date: Sat, 24 Sep 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664013653
