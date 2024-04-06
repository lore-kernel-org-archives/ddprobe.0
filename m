Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E85A33CF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712447897; cv=none; b=eaikTOIPoc7lAOZqbTwUcf+Odau7fplp+3xP+4qwLyfhzr+9x6pvHEFMvJvB0UjaPotpJJFv5Hf/a/cNUxHZwSVmuUdRQbfcju4sybc6OU02octXVULowvloxcR5YioLHyS6S+KIJLHNprE/G53fukmY1XvLidgoJD2O73rHhKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712447897; c=relaxed/simple;
	bh=T6YZcw7p9CQoUkpg2M/URiR8mGhZuYpbpSUS7OKmPSA=;
	h=To:Subject:From:Message-Id:Date; b=Gwo3fQLx1Z/OSUIt4IC8fvfkggcCWZw+TjW3p2xi2e9qoJ+9mKMp2t/8NUfLXInYbJ/Ukyu89/cYZC5rP0oeT3jNj3DDb5VWe272ClKcWYNHGJrJC5y8rD6KL1R4m+YK5/KG8Ovw99TC5jHy0f6jjipvvmfnnwqn30xzE0md4GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxoPTdNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxoPTdNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB8CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712447896;
	bh=T6YZcw7p9CQoUkpg2M/URiR8mGhZuYpbpSUS7OKmPSA=;
	h=To:Subject:From:Date:From;
	b=TxoPTdNOcq2BIBIw2oLZzTTlxY1LQz/wrZEzL1uEJX+3ehUnxxeKC4h0+aRNY7q9X
	 0bBID8+M0rsoioaRYzyjCqc+1phmPGZCmO6uBgQMd6dLyoPYZBVcLsf9ZSnZ8i9VYg
	 myvD+SSOlDeEecDC2S3z6lGERzJZC8+KYQpVlQt2rNIN/LvDraHtt1RFxAnSrdtO2D
	 h7p8Gqnftu+0W/RqutebJMBPLGld/aK4/IITTZw2A4W1jLg74DufntbRpmhDh1Ps95
	 kOoDZv4FYh8pBt+Zv9qbBVykRwPulxa35aau2REn2C6GJvsLw7dMoTVhtXwb9ApVkt
	 MNNNgMZy4vPmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B3AC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171244789638.27636.10758975571106873675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3673904de192edbd4cc07b76ffce7564523eb63d4760588d2f364bd5d275f7e
Date: Sat, 06 Apr 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712447896
