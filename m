Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E0EC10947
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 21:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 019CBC433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 21:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685915946;
	bh=ibAjD2j6X3yuOTzyyCznN5b8UbE+KXYZNlFXpgyesv0=;
	h=To:Subject:From:Date:From;
	b=BRUeIWNhWMRIfCBfimwRpg1+UGDZRCWsVFeITsodaA12KOwwSbG9cQ4HRZs3V/xmD
	 qoq8HHNyJ3aIRJLDXm5Wo23o8av+JWMFuPHp09zkegq+qgyPAQiT1Hlk9BLWOpBRgt
	 R6/aVtFkMCb9XkAwG2LTM/4h9Q1rzEZFWcaxnQ7bxvp4TNXIcqS4/IU5jKPJxuYaIc
	 ZefJiUirVDUleeKm+abCouFqxqJpqnB6Uybq/fK3bLK+vVWriRq2pF0aDyZ+8N5hub
	 xIeUDscJ77NZQqVYg56DVYlkWt7ZErxCaQJNfZtX2PLc008Gtc5JwoiFDUl9AjfLnW
	 U1ip3TAEIl4zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBC65C77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 21:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168591594586.13234.5613007549217870214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7874fb3edb25693fb96693544151a205d5517863743ec57476cf1bcf4dc1bb48
Date: Sun, 04 Jun 2023 21:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685915945
