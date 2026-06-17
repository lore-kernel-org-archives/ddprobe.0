Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440733B3BFE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781679394; cv=none; b=k2Db7L65RYKdunzZEb+nq98bnwUqqRM3bAWvtsVM7/T2xG2p/7vJjXjRo4NG71QfyMvrQ+sKntTxAIxG5U04DJ8r4kXPvnPz321qoT4t1DntQfG89bPyw4QHGBIcbXNTzt+ErcSeKe8noYyX+OdrK0CZfgKO4n2ZBH1dSUwf2IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781679394; c=relaxed/simple;
	bh=Cfvr2TlPGPgmwx3HE3PkmWXrsNqDxPtIhZrcnMxZmTo=;
	h=To:Subject:From:Message-Id:Date; b=c0j8lg/95gOjQfl4LcpZQD1A8d8qjhAID/O0Yu0YVyrdD5BIX8apaeoTUudtte3AQX4AztzMIiSB1xqjrlfRCimUoMp4lHWd9E4urbpFIblOo0PzQlCDNaVBk+tNmE+BD9MSfUbLMT9dRIdOgMwQQJ6L9EvK/PLvpqqDQe3WK4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dr0hqYGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dr0hqYGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F3AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781679393;
	bh=Cfvr2TlPGPgmwx3HE3PkmWXrsNqDxPtIhZrcnMxZmTo=;
	h=To:Subject:From:Date:From;
	b=Dr0hqYGm2VpHmmy/LNyTTLKZJX09zrJJi2yDxXQRZ8PZSzlLnJ+48BdqWnfzqt1H2
	 dtTQvurLXd2WI8XH25GNyXDlKW5mTjjNccOZZc0DAEbmCxdIqw5kLwlKC1c8u3JUzb
	 q0bWVxgq99X2ws9Z9z0bgmIdasOqTS1dWusHo2enP7iP+1dB9zDS7IjTcoI4f3DTU5
	 f7m4c9qpjOORMnTFGgopx4iMh68K7TsEb/I2YNlPjgufa7l/jorwxxrvfKLKbeU83C
	 MzhlOs8lk2fJENDW8MAoPdnHClll7284cWE4Zvi7V3MmdrtLpYYWkzA2L+wZHyYnv8
	 NSNvqbrjcXSFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8216CD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167939374.27973.12128228051884406592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea1fab43376dae84729d91e09302867cbf080062a0ba4429939853c8f508b3c
Date: Wed, 17 Jun 2026 06:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781679393
