Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA8A3D81
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737893154; cv=none; b=N0yynhVkFnvYV2dGrrmjkCK5VNzw32AdhvpOx5AbBuUUeyogNE3W5KfmVnzCA3fh/KiGjxPwezD2I27Pd6bRIvMpqryaWy46bCfSlS6OiD3tSxWDX4w5/sy7os7sdwwQ5i8ewSsv4LqLYMFeYdMVnqZqSPnkToPOGYWhVZLkdcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737893154; c=relaxed/simple;
	bh=RNk9CjNip+3Gj/Xw/kE9MkcPhi5frY7RtW3Cnzwa2Vg=;
	h=To:Subject:From:Message-Id:Date; b=m1T9v/6SioT6PHqvJUU8UMPPfzLi2TAMUaJvdtDyB1ABbq+24pMr6xf4vwByHmjx1F7P7Ze/8YUhvfrrNnCEVYlmNebUYpM4vABFtLSCzd9fiF3XXeNN709GZ4mTntQ3FkfXoTv+dRo0dHvwAuFqldM6XuAQPriHG+fAc4G/Xw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJhBt9G/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJhBt9G/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC017C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737893153;
	bh=RNk9CjNip+3Gj/Xw/kE9MkcPhi5frY7RtW3Cnzwa2Vg=;
	h=To:Subject:From:Date:From;
	b=RJhBt9G/k9oFeKRCrcEG67SefZcggfEuJozgI9zZM7iFnwlJVsAUJhl5hnTB35+a3
	 Q2nF/nLTLUbIPAtrIOJvFMXJQNaTr2LlWyd3x0VnfgpcqxZQ+WeQeNq6iN7b+LXe8g
	 NRGorfgpMw93ANtsgu4yb9U+1NMcJg7IjS90Banp9t1hGoxtiqrqjrwE7PLFwBnDsv
	 3jilibdCaMiFetobPLpxnJydcjxbv1CoNqLTO6YqCX39gKpJzgymfoNTeWryAw2/PK
	 oLNHtlzyLu2JVseCAGaPkNDhT6B5f1aajXRX3K8BuZBzFkOXIyH1qaZlVXaW5t7hLq
	 LPYXr/PpBTVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9314BC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173789315357.3773.4822720827807280206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e340c34dc93b7c196413fd9843cc5477188d703f695a6158436263eef8fc69a
Date: Sun, 26 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737893153
