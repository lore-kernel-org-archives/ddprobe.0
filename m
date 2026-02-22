Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112CC19D074
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771765494; cv=none; b=RhoRKjl9fPIhivlspbrSfQ/gJwtzoyhsZ1kyV1xDmIqY6ld9HqYbB5RZz9AmaVCd0iOgiLANRk/Q8se5aeirYH+ZtXj+YdBMTUAAAVTpHDVEdY9+vH1dPKiLzHhjKbQ/M9XYgDrYMSy/GaQ6SDqCid6V3kqIvaX6J5uQCiLI2D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771765494; c=relaxed/simple;
	bh=k1RluKlO9B5w7rUz/t7uSe0oUuT4ESsXun7WY+ZK02A=;
	h=To:Subject:From:Message-Id:Date; b=UJW5s2ZYbbtJE9QkJn2N6qmF/gRtF9XBsoKdNvduhFMf5h7TLap91OdamhjD/mmC6uvap1TyOGhAPq3x12X9RVfOuz7htS7ZE07B9eUu/KrvoDColBbYXaBp61FK7ykRZlu5CYGTR0FUFhbSmQe0Q3S0f6h1ObdDrnLgEUB00wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMbvxdq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMbvxdq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB972C19423
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771765493;
	bh=k1RluKlO9B5w7rUz/t7uSe0oUuT4ESsXun7WY+ZK02A=;
	h=To:Subject:From:Date:From;
	b=GMbvxdq9JifX65JxMHIsqgtnHLtDkVqKciVoYBugzkCjgSYGprVDakbgzlmzCxado
	 28B1xyaC3SnqqymLWsKfK+OxYVpvAyvZh8fz9/jmaKa9vblTxFAkium3h/uJYB9SLS
	 gWke7GYaBVzI9VPCmRqMbStv53ZbNGZPz1AOYGmyF3re6KQiQoTRU5B2E5Bt9ErYOz
	 ZqDA7ah6bgRjS7Btlqj0BbHL+gRiKjjgzHM68vkIVb1AA7esbyS5IUeuwHb0Dj0I82
	 IboEd0kLmYb9BYNN4A4WzjEpKWqfxZBDndsNPnLy/xMb2ITuucaYcO1zxbqNuMdh8k
	 1/rp7p1wn3QPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987C4C63680
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176549358.11113.15538132493505364395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7af9c9b34e2044c6cdff8d7eea52dc88639ea506f8096469897351acb8a3a5
Date: Sun, 22 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771765493
