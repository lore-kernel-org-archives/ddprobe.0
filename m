Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2549A2D3A6A
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769842434; cv=none; b=UPlNMoNHfm2i0Iwln/4KlN870LzhkL0DkOSgrqEGlpQ/AQUOXSMcerTBfyWpP3XHx8QzSKXiq1+63FWCc1h+gr513UzRc5CQytCw+CVYtvg70BozJGH0Wnqnz8wm4HhFw+GE8n/9Q20vcwRZ6gm5dCW0f9cSlneG6fIrvD3g3ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769842434; c=relaxed/simple;
	bh=f6i6Wf0FQVoHp+8YFKRDdfDRtOZ3otJqNAbZE6intRY=;
	h=To:Subject:From:Message-Id:Date; b=qNtTc4+jUPpLlQdyjV4vByGDEd9Uy8eQJum5L0gEhD4OoAEfdNOR9HKfrRmeEJBs9c/Bhxa1Asn2s+fqDSGfYtytijXGHRbby58kE9H9wuHtqXbSs2Ol/jwByapjCWV5qBkL0R2XZJrLGq0UTcdLmhw2wB1J2wdahNO1boJy9oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msPk7fh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msPk7fh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8722C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769842433;
	bh=f6i6Wf0FQVoHp+8YFKRDdfDRtOZ3otJqNAbZE6intRY=;
	h=To:Subject:From:Date:From;
	b=msPk7fh/r71EA6AYXvKsfLWEGtekZYj/9kLvsIiyPiOUA8yvk0PKReGT8P3E2DptP
	 4Zl6f07aX/kwRrBRs4DpVn5duurqClMblxDKU42ne1hRyB93lysMF1qWVS1jFbXKuI
	 HdHTBCXwOFAchIheUUID0Ta4Bps4V297Spd2PQXrvOPp8N9t1A4fo02ztAsb2GM1P2
	 /L3UtoHfKGAXAaRZXQ3lGyWE4CT+sVKC1GTSZr5Fo6t/hx9D2BXR0CkEbjxxAc6gbD
	 AEUhY2Wpu9b/K4K86Ocoe2X5Zp7w9fZYuUjxLv/NScOsEVBYu6d79ox3wuh7ewKrd4
	 /3kasSM6ljbng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932F2D79740
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984243358.20530.18028656910398926730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fd2b58eead33b8f38355ef9b0f7f5bc30192e9f2998e7b3755cea5c4eafa52e
Date: Sat, 31 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769842433
