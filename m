Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8EA41D95A3
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775971654; cv=none; b=BqfzUGRci7+mzb3Y5mbiqRCVCK3I7fdo7IlCEnICBkL7KWgMWQMYmeH+JCnD6LB6GQIum9xHUumLtt3NtV5L2AePp89t0v3jVO8uxYADSd1GxZgc9NTlPpXgMJsInUTygo+RI6l4VgZ72qSjiwLJiHvmsY6LGQ2nUS53j/bEyOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775971654; c=relaxed/simple;
	bh=0Szpuqw8zrgcqYxupxZufrOuIPBFRhS2wiQiG6BGlNg=;
	h=To:Subject:From:Message-Id:Date; b=MUnfSERusdfw20vxcYa2j24eni7kstuenVxlU5AthM08cpiRHCMMO54ZLg1mvHlcOy9rm9rCIiWLVxz4CMJw+l7RKSKOtAo/kq+xhX/TRG/jURUOWZDOWo5n+AW6QWZ3VikEAnkljAe5lz7bzxFrEHl1Z6S5dqWQiaY/VtQyITY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLzPaFTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLzPaFTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFCEC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775971653;
	bh=0Szpuqw8zrgcqYxupxZufrOuIPBFRhS2wiQiG6BGlNg=;
	h=To:Subject:From:Date:From;
	b=YLzPaFTUuPrCPY8si19UwkHaD2nYfGVWveHT2ctW8ZUmkX9Ade4+sf3xdpi5UDgob
	 Lx1JR92HasvfuIRKnxyvfoHTwqhymE+bwSXrUD/HEot6ZCaNPJgzTa9j4M3i79SGQh
	 /iwV7pPWz6UubCAuNFq3ecNoZ3R8FSD6JGfKqqfKXHGXQnkzFwOBC2JIOmTw38ztva
	 M1DLqOujYO3RaddI6wbqQ544Vr3xEBAWCtmmSrEO3aKg2NOHzh1Q3hGXu/r6PkYOJb
	 w1yP0AqhvUcARTUkl3WXds3jHR1bnUJfAygS9NrzXIGfoNojgcLVTJFoK39yQL3gJ9
	 OyoK0Gk6xhNAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93E2F3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597165368.31150.18159835298307642849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5731c50f208fc08ae25d2836722e261655cd7bccb29d25d80ac8c4611ab8d776
Date: Sun, 12 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775971653
