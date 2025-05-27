Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289C35464E
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748319594; cv=none; b=YB/tcT4aBJYEPmXDFxXtNTQufIhrGU42um9nMlG2tMgQjXfeLjWVWdoBy7RD19NSTAAz8IMtjotvxAVePtlIlKJpauyt85nUTaJXPxa2QBYP1xy95TAYkTPYcmCguq5oUfvpZqx9WBcRlLjAWOKU0vhYdvAKNdGzQ7dcBAg6Djc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748319594; c=relaxed/simple;
	bh=kxd0t4o0Dbjz3giLsAvyQuWRy+Hd+jpfMPd//sMDb34=;
	h=To:Subject:From:Message-Id:Date; b=MT+qymIGBS9DbQ/gOLBspciJmoLfuVjXZg1k736N1IBnF+2XrZf38YFBaXjFDvhl4+kZPoJ+Wxv4Dd1/QvSzVBkNLICh6k2pOLMXP19JZiuWu/KO3d4c6Az4RQdN8dT637wR4po/7tvrM9iozSSCDwA5f8KJyaEZtPaiC1CzsfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHrYHGUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHrYHGUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F5CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748319593;
	bh=kxd0t4o0Dbjz3giLsAvyQuWRy+Hd+jpfMPd//sMDb34=;
	h=To:Subject:From:Date:From;
	b=qHrYHGUG6TQxzh6RgfCtza8j0Timvnkt027NwyXlt1FAFVv0qdCCNIrdSHjdSZcwu
	 N7QQ/QrsnHZkGPZecAMAduPIMAqOjmvGsHminjHoL1Cw6QpWx7vvfTtR9QkTEghEv+
	 /EkvPxDdE6zUQWfItOnVjqYZWu27Rlk3FRvy1jbfO8D0ZPSqQwyzUzdShMTaC/2lQY
	 L/GgyysY6eZ5uiZjepb3vKnmj2E/btOMiQbIJ9tmQDZKVdHuMYe4EzKdBDDy9HoHXF
	 oHRpVNz4qtWTw2C89Fd0T8+V/XD8Hx/td5eP7odnuEMZGnD0yNR4qAHRPUTIiL6f/u
	 DlmKVodA/jlCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90336C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831959358.15195.13072222104471584656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c55a75d386a5920c48a0bb6b8df31af8eefb673f293056d2404d0f9743cde5d
Date: Tue, 27 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748319593
