Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3031F2D5C76
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753361994; cv=none; b=HRhlccVyAmfRtg7LJyPSK6Ftocd0bInDAXYvxsl/4mXbp65JxqWpA6JWgCk2v0MHA0vMfa/ffZQ/R5Qwa3j10XpMPkB0xOHjhYh9Zg3uhB/RG6/JeF9GQVWFOkoBY4mHZJbOBO/wUOG23R0GhDg94DUix+Zw+WlYBkYNfuBVf3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753361994; c=relaxed/simple;
	bh=+MqzfFhYUH9isAkjAcqzd+Mct9Dlyk06Rb/xhJ1/kYA=;
	h=To:Subject:From:Message-Id:Date; b=gGD9nnC+njVZ2FW19P42/fU0gdsh33qR0Ejc6311vVNNQvwc8dYMonBdiUSlgmGCOkHco1MwUue0T7BKwz6KtQxQN9TK9ooods6oZtXkyEh+5OQS8UAAQTYz2k9/9aL6thiRk/ZwgpTzaO4A6Q3X/5r242Q3ixZAlMnS7Ptomj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atyLW6BA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atyLW6BA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42AEC4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753361993;
	bh=+MqzfFhYUH9isAkjAcqzd+Mct9Dlyk06Rb/xhJ1/kYA=;
	h=To:Subject:From:Date:From;
	b=atyLW6BAs1/ZjuaV5qliUeAFiRo+XAKFp6Zt0LbgPgfV7JVwjESpeILx35K0afrdy
	 Bfmamxcimtfbg9TEzTGzVEcrErkT+Dm2OtjHrUX4SUeEzKbotYNYKLwxFEKiu9L1Ma
	 A8k3jpNfCW8NIEQbDb/M4EJQy9AgtgLzG3Tg1I4rPIRLcQtGtKw5OqKQ83qUgiddZz
	 wLxub6BE3V/xlXmU7vDpsowogkThQkzybCVTfNSnnSqi8qVBfZbWL6qMUqmMOg3rnF
	 vi/8Ostv+87tt91uEYqko5G5EgMk6dnH6hgEhv11ENy4DZLqNz7Yf+fnPkHN8PTpbi
	 +ofp/HCZ1114A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A28C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336199358.31559.455674144700288915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63822d9efb932471c239ea9660ee147b135cb6bfc1227353675b6e2225e76dc1
Date: Thu, 24 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753361993
