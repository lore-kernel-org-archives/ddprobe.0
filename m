Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A875CB0
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70BE1C433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665436853;
	bh=zaZbYp+58EP+6pHcyr2q/Ebh2d/2W9lAIzrrcX4gTZs=;
	h=To:Subject:From:Date:From;
	b=EWXXFSgHgR2KSo2vov89w5CGlpwr2s6zKohqPEPyiGp3EIMg2oaSLv/QS2ySRVqPk
	 rALqUmuGaUX0rTO00fHVlyDQA3ou7gKB9nGxwCt9a50Ch87CL2m0uRkeFGIQF37RjD
	 NoMQBsp9F5J+RrMDpbAwsOW8NUZhB4SdeXB5ZGJbtTqZkZ+tyHQ7ADgu4IFbPCWrqJ
	 cLtiK3uMDm71AFKAtb/zr0rShRuRDKvRcaCCfa7G8Ht2pmNjWMct1kmiYfQELdU1y4
	 ipA7OUeGVgCzuDAcSt71r9hwCBlz3pnE1tBe4ioGZj9593H2cESmVI5CA1XX44bA9B
	 eJNmkavdQJQRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5722DC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166543685333.23107.8881869201611009925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea98bff4d17a29bd23cdf0bc26a912dc7ca4c15b7874ed926209a8b2553a745b
Date: Mon, 10 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665436853
