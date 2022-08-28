Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D597C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BAE6C433B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661725252;
	bh=grAzqLKFPqqOSt7K6BTAzyIUwtkyhkCzv7Em1utNP2g=;
	h=To:Subject:From:Date:From;
	b=e0iKcQgz58dwgA3g/U6iXixLiCcBPY2hbsDrpEj3Si+o022ITwZdEdqjR+ugFyRl/
	 1rVbkDNUzzkAMhFBdHpTzNgYNTJqxewHPbYsNyMQm1RMJbz7pq5WTfUNMBoYCl02SY
	 hc0HlSDG3Wc91R17NbHi5aiHhxl8DoQlG59oFNZRaFba473IeGsf0TxatrakBxAA+m
	 2Fvx9xiYTPNexr2PwojSS5oix6v3JFLfiSKbdLnuLjK5rpWMdOrR0m65OeqVP1fD8S
	 SDw57NW4VXo52sW9tU9+JsL7rj2dhBuDRU33hJQD72ThJXB5Z5IBEucBVQsbkc6sof
	 Kfy1W2m/poZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C35ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172525232.13996.1734315303982308348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a743c5d3d84885a17d1a0bc535727f9b548adf1c5ce76d208bc57fc7060451b3
Date: Sun, 28 Aug 2022 22:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661725252
