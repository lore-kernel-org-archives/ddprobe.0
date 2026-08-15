Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697542773D8
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786779034; cv=none; b=a80iiZZT+rxyeUtBj0F2YpyQc0SYBv5HKOuRR8ROIubIoPW0CkOy4vV2ijd8SlB+wpo4xOIWBI5FE5Cnucxq77P8xGfq+5sah7SWWSeSVzyzXB0PT0UsLfNkbzb9KlCN8Rkk03NFA2eR7ZjF7i6unt4FepfoavGoeVWpjFbdaCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786779034; c=relaxed/simple;
	bh=HDRitMj5FH5YSGVYzZ3p4C5X1W0YGu6m3h0AzYzF0js=;
	h=To:Subject:From:Message-Id:Date; b=JYUdnVuX+AX1CIZJvCPxD3Hv9c2qjHJ3kz73BpZg/8MyxewRVyn7jHB0mpO83nS1s4yVK4SyU8VMYgR1Jz61hcACXXJfQfEcxhAw/VLF8b/X2ylFJeove7eWOM4M7DxbRn3V7eI+ljwkAIBkYDFmB8ZzWLDXVcSN7S5DzPJGH1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNo7SLbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNo7SLbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D900EC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786779033;
	bh=HDRitMj5FH5YSGVYzZ3p4C5X1W0YGu6m3h0AzYzF0js=;
	h=To:Subject:From:Date:From;
	b=eNo7SLborbwK9Los+LqO7fn85zv3ogfMXGAyg9fq7wsa0PCx8Yjz1dkJp2ojOruev
	 7kNvhEeo5AJ3yaKSlCbnYXLGyiVxdftiGH5UuBoAU3yGv3N3NiThzXVdTo+T2Eb5+s
	 qnLQT6C6pqjt9BEzLq2Qe2Po045CrE0RwQ1yec1rvGqD4E0lltJKQ9hiUO0ea7j5Rq
	 aOoMqUqlV0btR+GzzfjXmHORZYRQGKF6Uhqur/xeGhCPQC5fqGStDDEZsRTT2os2Jq
	 OEp7RyRfY4j3IJaXwOz8MGOrKrqSqvCjsDphiGGOVFb99FW2fQG0V79773fKrOrCRV
	 dZxRzmOH/s7vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEB3C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178677903369.26471.5103046184131231636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2341b8d202dc5916a263f3525034d9ea385e44fe8158c0cb7538bb22852ada98
Date: Sat, 15 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786779033
