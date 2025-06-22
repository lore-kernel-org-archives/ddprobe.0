Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182EA2581
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750552795; cv=none; b=nZluOcQOXlLBeKo2sTZwyfP0KQvg7vedPYkIahBu2StQjKy7FC4/MAYQnJH8i8eyyY6SYQEuijfXkbY3hh1Uso+RB8VoMhZ3yBOV5D/nGlMWHrUmukpnmncXaLvFipH3V4xekbX3m5InbyMzcFRoqqgq6aSdYrjdHaYdh1mNVrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750552795; c=relaxed/simple;
	bh=cxJplS6Otlhdw0qpy4e8EEWxzdfm1wlmS7Kzwu4VqFc=;
	h=To:Subject:From:Message-Id:Date; b=D3NYcCB6j4yFdfY8/haxTxJ7qJCHsLy9dPuzV6D61y67y3doYLu6VVWOOr4a3/snbztonELEqpwNtXs3Q4StQ1M+R5b4/g48xp6pDE7V5D7EIARjdbOvSwPgmzytXSZ1N+sV6eLhx1XgqirA2G1+Dzfl0xhm8NXSFvWRhvBfbCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNiFtONJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNiFtONJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D33C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750552793;
	bh=cxJplS6Otlhdw0qpy4e8EEWxzdfm1wlmS7Kzwu4VqFc=;
	h=To:Subject:From:Date:From;
	b=CNiFtONJveVCkituMp8HdxzGIpAM+GRwmiXY4QI1XybrwOs3g5eF02KV7mwurlWyD
	 H/t5AuZT+U9/JqWwKSahYJZsZh3djfjbk9C4a1rvXqfi9MpyUgt8dKdGuSPZRE20zp
	 KCMdu3chALo3aLloWiVwdKuxbRcpwA9PvGyEZOmM+0G91pPGALac4gTKWGIbjdTW6A
	 1BVICCi30hUyUDMlK2MyK/N9ZGZ3pmwNd2cV/g+3jvSV+b0lhspbdT4IqdvVEassWb
	 kfVGz8iF9+D7yYNg1ql6F3FtFUD0R/yhkjyuYivNV2CGmLO47uVbljTx1KWTxs8oag
	 XMPKHnk/yD8xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3F0C71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055279357.9447.12802273528140259385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf4a0fc1dd8c34dd1be1b1287c433b24a8888c29d9842176996d8f0381346be
Date: Sun, 22 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750552793
