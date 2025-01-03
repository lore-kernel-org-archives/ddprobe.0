Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA551FA8D5
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735929954; cv=none; b=P+aBDDNakuPholUtKEBTweOFd127YTlp8VyERxdXPIlvNZWV0FbswTiv8eZWmEutRQU/Zw/HWnzpi5SxJVDJgLb67nk71PkvxHGR1sCgw+RbKR7iT97UZ/2McLJ/eUQLs67iQed/mxYEqPrWpCOK+j4qS8GviSo7HyNCO+E/DcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735929954; c=relaxed/simple;
	bh=eSo984ELMJNseLtmHQ9XXr1LcNYo6+h4O5xSDOfjJ8M=;
	h=To:Subject:From:Message-Id:Date; b=o//wqc4oM6PqajFruIdGaIHSUeOv54b1/+5tBp2gLNqjHPzYn20UmmDOCOI9qz7zy8MMHvKwiZNGKiRTLhK7ZzfgEEIoToqHqpMcvhRZ954tQH02A9GwWEBiJMzjHsTm9WPiuk4DRCDzaZMIQkYHwAWHkWSpPdKGSNl7rP2kV0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgfB62yY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgfB62yY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD28BC4CED7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735929953;
	bh=eSo984ELMJNseLtmHQ9XXr1LcNYo6+h4O5xSDOfjJ8M=;
	h=To:Subject:From:Date:From;
	b=HgfB62yYc1Qbt7agjKK3u8MIPPurFv2UPOWTvzY33VgDFKK5+0cuTDG7FX2SPUitS
	 QM0ZzYIESr7tWWSWt0xHtInwv50bfYh9lcqYugId9gCoDlrf+NCrEekP9FUxYCnGSd
	 ehw5d34G/qUdRFxMNNjN0SAKRl1NGG2sAIr99rrfU1OKhMJALm3jLxPQKrihdcfOaC
	 8k3CjFRqaVa5VAVhgQd4zKL5zj6DaM0jxMV6HFZai3YM5BN77HDmBh3zOxzeEYWDdM
	 wtNQvgo+59MHPhH/3h16w8mi7RvvJs2cYxqS9mKuIkUHrlzTaomAmbM6pjCV82Wfvo
	 AYVc0tRN10s9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956CDE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592995360.25349.3632948008533906411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5741c34f132ee1321d025b59cbc1251c71cf7d32280b930313485efe1ab7974
Date: Fri, 03 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735929953
