Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEA93595E
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748181595; cv=none; b=e180tAAj91yPChsXl6NNswyZPLp+iZiDceSFJ0rpWlw3uX0MfzpcEYHQenvyjeW7pJsSS3PTCu/1pztgcaQ6lKdXwxPWIwDssvYe5gNR+CN2wlp3RR9NsoCSJJAgOZ4cCUizeSxhW3mYMb3MG2gLEzG4d57rMddP/sHzqqhoJag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748181595; c=relaxed/simple;
	bh=U649Bfv82yEzIDorL8P+Ub2ztyKMqi3jrKpvgrd9I/A=;
	h=To:Subject:From:Message-Id:Date; b=MZrZKH6qSxsLYKibihOpaQR9/jImR9Kusi44yb7tOcHYQs1VsPtPcAKwdrUOsHWCBa2SprKRY2THCHFTzXr6xREbFaexWCcbDtjSKH6zMRKQUNS2KQ6q3RfUGNQOn/mUMkjnsG1wuEVeEBZuP+qMB+/yR9V293aJGH4EBNfD95I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZXka45+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZXka45+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A430AC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748181594;
	bh=U649Bfv82yEzIDorL8P+Ub2ztyKMqi3jrKpvgrd9I/A=;
	h=To:Subject:From:Date:From;
	b=CZXka45+BhlMfGcXfu2qHK/bGWTbxB3pBja52JKbntLGof/ksx3yBP5cBEBtffXIr
	 MK+WTsczUbMNGPR4ippXaOHtlC6XEled+9ChmbqQOviqtcP7OhWoJ5NQ0btW5pgmEr
	 OcFFzYyyX67EFaTnCuhY44QdRGiB6dm3nGhNndu+SBq3gQ1V2Kzez6diWVYn1oWRF+
	 iWUdCA4UhXJ9Hc1cHvxsIgLyZtYSPNfJLrlhkBpzWvGw0acTyLKCgsiUntqOuvOu7/
	 B1QdAkoMcn5T337DkrSGV+YhANsAuMbwz8P58mUwZauI70t3LdSm9pDYq43bb+Fy7i
	 GBegZKXAQX/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9011BC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818159358.9774.17117197666652910447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c9c116abc4c4314917d65c24c14ffed0efae954d2725b267093d5c8a6a8ab4
Date: Sun, 25 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748181593
