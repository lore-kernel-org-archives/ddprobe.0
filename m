Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1ABE36124
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748261994; cv=none; b=fjExD1M84nN9UVPCNtKv5CbAaJYVRMHkYmE23vFUZmKO6f2Ow6na+nyeCMDfMQAUbpQqpF7cqpMPSF+zprrmPe1DEbcu8I81g7JEV1Q8rBFUkyzzp9X490NMf3hq1G+bzUFYQ9A0sL+UO/KFBdFOzKJ/1JnXJfuwoZRh4UN8Dgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748261994; c=relaxed/simple;
	bh=Du0nkgpHgHcnmdbKlkiJxQmOCirgwkm3rY76mojo3x0=;
	h=To:Subject:From:Message-Id:Date; b=OWYfVP9BNnFqif3bvSSGVaL6zBHzJHB5O5DqSiZGUp/M0yNgeQqeriDTeZbczCteXDQLwxXZNz+hvjHVpywEu3B8QszzlrCwCaPq7D0QW1jpzcYsrmU7jPGirtcldje2oWm7kh5K2pQrTTalXBompXL801cdCDVx4Ah4BGYG8X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXSfaNXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXSfaNXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26CBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748261993;
	bh=Du0nkgpHgHcnmdbKlkiJxQmOCirgwkm3rY76mojo3x0=;
	h=To:Subject:From:Date:From;
	b=dXSfaNXjyDkaoif3AtaMjdp+w6ntwkgmXkGtOSICP4+kzjkE42bfs5eLmOvxqFbL1
	 UtO8QA9TgYcHTS612cBKHRlrVRY/NyRvBpxjLZFjPWkkXWJjqosSra3c6Fq3C5DKgP
	 wRwnGlELT9/DBuBK/gMEtFuibfx1p072ifCVLpsk2W7EmKEYmstzmOWAnSTF0t9Cgf
	 g+HuPuR8BUmnhlo5Isr86fuJKBQfWrGUyPHGpy/aVn7p/uGmaVMjECorRLsKzpacM6
	 ZdR1F8ROmhx7EH2RplKtcA3MJ5frMYUwqPfUVN+delFCFO43/eayKCuuUP9jHfMK8S
	 kSYEesSs/mZDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF65C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826199357.4004.5798190635444057793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb4c7d83b0c3883497826c270bcd3622c78c3c8463fc9908d9cf61b57e6813d
Date: Mon, 26 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748261993
