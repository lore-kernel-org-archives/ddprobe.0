Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D215139B
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714785743; cv=none; b=dt5IaWRq4Rn78SHH2vG3+nnlaW+nw7iWzxADCJSt0HjJB7NeIZ1c+FOEOo+6axSwAYPJLcHgfqFU4M76SIvYhfc0wW8iFFyukB4Hi2ToHLCdPDI8cpHQ4AxYUy+hWjUPEixTcNks+F7aGGTvkUuQMFUSMGbjl69C70KEs1S8gYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714785743; c=relaxed/simple;
	bh=S1AciXxbrwPgA8T8iz9qSOK1HFVBsTgiXlEVwfGuCaU=;
	h=To:Subject:From:Message-Id:Date; b=JPy6U7VxxxyDngi/fY0rPb9S3U0doMLKefZ3uJpDay8kXpow6S4EXJfOvFr3NGmF+XNegqIEm3Qc5l2iJqz8QCM1RlGGpVUaNBrpKtfblUrA2uae40g0q1pwlH7GzDW96+or4ZPhamcmCI0LXzGtNWu95QFTEKsm0CWM+wDkxzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8ILfblv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8ILfblv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AE5C116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714785742;
	bh=S1AciXxbrwPgA8T8iz9qSOK1HFVBsTgiXlEVwfGuCaU=;
	h=To:Subject:From:Date:From;
	b=O8ILfblvFyqxuif7aNAU3iVWkoYoeaJk1sVY/OeyEwEsVEoI8GT+b9ZrRz5pdYXQa
	 LxgR4TKg763JdqWwUudzYM+3hE77+fK0dEEA+BqwAxLEaXTBLbQsYKUxHHYNoVJziV
	 ckLIz4IKc/I7meyerRLuRK9m+o498+y76o9Js2DAfVA5If6wTkn+ZmvNUlrItlwnvX
	 zspREyGXiQRJM4jnt9MjK3nGdFo654TGyozqVjMCNVrBGafSqJvoXAPBfRKvCCJp2P
	 ocyBOTtPBuB1bk9WW7jjmJ1JyA77Q34MIdXB91M6FsS0Ll0mIZcPZ4+EUE///QXxQS
	 TcqWiuAh6m1/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26B6C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478574276.6815.13838148925159338499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c56be82c8a23502e0622451bd8aa976e327896bc935f440f15e70365871a19
Date: Sat, 04 May 2024 01:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714785742
