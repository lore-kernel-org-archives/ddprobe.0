Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DF3199BC
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751252396; cv=none; b=IHl8XkggyH5iwaSc5bwfWS0+/RtW/sErWExZwvCtyG3ZVVYcfYsYCWjN36dAVXOSE5+hxp2P2Eybu3cja1yPzKyhqTDblUoADtea+RGhI2WkBLQUXmsRo4nCN7+q7X5Swbkv5IYauBTWros3YG+4yfAzxJFDJFA1ibFpoVFEAhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751252396; c=relaxed/simple;
	bh=4tv11lKvxk0s3O8Bi03KyBIBFwknugpkJ35/x5SNhpE=;
	h=To:Subject:From:Message-Id:Date; b=oyLXJVNRDBo1YYYQYQJAMQmZ2FwvU0Cpkp6Otm2+ve0pndnut3RpvCPD+prd0++b36PmQkunxWAG2N/0cIAu3EhEk6GW4FEQK7mJhrGEwtr7H5wt0o1hmpmnZa+J1w9F+9+lJDK5wmMsDFDmW3B8LNo6C0IXAq18hwLyN+7U+Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RA1clL9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RA1clL9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2B5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751252393;
	bh=4tv11lKvxk0s3O8Bi03KyBIBFwknugpkJ35/x5SNhpE=;
	h=To:Subject:From:Date:From;
	b=RA1clL9Eaf6gzqO/8e9TQ5csMZHtuP2p6yQgbYvxgIBAwXcKWtxPDsSiMy3Wk9eCU
	 Sbzbxj4w92s5gdRZH4hFUpeuCpQJHp9hxig1urdcD1qiMQafAPxnjMEDtU8/whxwk3
	 0xfs+WbuOBk+K6NUkTGQWrBxl3ic1K5dxvQ7XQciXfCaITF0R4Lfnmn0ZH650Q6yC/
	 LG8xAj6lUW5aJANbMHeV6+sHNwQEwfLrwhgNz1UMs9YGnetveNAWAXJM26PYh2zegx
	 dcYNKnSrwg0Nv5z+I29rBX0iF4WxdsIK7qQY+F0Fp4JQfugaje9lcIYrc7ODBD9UJ5
	 TyTFC+zHnlgUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AE4C7EE30
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125239358.2550.9818182784248910088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 409c399f80433df931d42ba3eaf38feec5043e307bb6eb85594ca4b2b5f23dec
Date: Mon, 30 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751252393
