Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AB52D2383
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749806394; cv=none; b=ln7vJSXpOhZ3LbXtF+nO1+bbaXICgSFUPo9Emg0LK5FdVVd/bbpXtRrZw5UqZNjEZa5NqwaiYgmeY7bIvjxQlUyn8yjehVNPbQcgZfVTPFt+/2U+vyyLHQ6H5vB7RF3pJ/GfSoVl846G+Eg4ttkjYX36fOnTJtP6wCu8x9LjVNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749806394; c=relaxed/simple;
	bh=BwAShJRkVQ/L2WClEuCgDoMUQBQkI45Q+lQQZNFJJjA=;
	h=To:Subject:From:Message-Id:Date; b=NjzqeHjIxOu/P/6w9v3j8Qzu1/+W50CEL9zhAbXuWRDvrHYgdpsi1N4Bitu2s9MsE0KRt6hga/qLA2k2oLV9ZZk1ok+T3P+h8+xCgGYrtaVUqmRQAdnR3T4HavGNfM1QEYGeuMSsIPwMOHmDSijxADLxyRNVGvVLoVE2dMuY3Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWWvJWoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWWvJWoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1160C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749806393;
	bh=BwAShJRkVQ/L2WClEuCgDoMUQBQkI45Q+lQQZNFJJjA=;
	h=To:Subject:From:Date:From;
	b=XWWvJWoqkuXpzZWWPAAP9pi6Sk06o0T/887bYvYQZ85rJlNUTggMr0r/HtID5tBZl
	 trtkdXrTnjU/bOH2SfMZbBhhnKmE3MhnItYtu9echqf5I0Rcg3PamvjS/FDvLejM2Z
	 ywKJde3XiQhZVX9i2rPamNmXksYQNLUdkOHeKCUjSIhaM+RGvXnKM64QfhRQ8+OVJc
	 fNltRrpU8ZeKHAlegwRYuwvnqsr86vZNJsoz6hErT4szNr5wjRAAg39w9VAqa8yWvX
	 i3Pk05thOgjW5yFEoxwpgKlCzrzOYBPHJbrlOuS7GkDZfcfhNKuweGaIcb6Qh9TUba
	 /2Jis3fCCnAkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D3BC71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980639361.13976.8294767941446981108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64a014a71a9125004738dec890f66692a99f0d16549e3f18fa50b38f96909ea
Date: Fri, 13 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749806393
