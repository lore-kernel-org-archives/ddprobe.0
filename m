Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B89C23F26A
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756682394; cv=none; b=YQ8PLvBVDHvIxMZrnbfIHre+pOY7yIvwsI8sRbIZw3Ai7ZDkJ1S+tXnUMiyLEU/a9TwfECEjJK8EFwQ+uyvlzihbxd1hIQGHbCxODCo1LqzU0ZJbVOOQa8Uj+EWiHqZZuOTZ7h45YFED9KYhz3FM5MmY0bimMH85bcendVxibA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756682394; c=relaxed/simple;
	bh=SmNir71Y5FUkpQM3Fll2rCeUKKn0VqJqJzA72jgRlkg=;
	h=To:Subject:From:Message-Id:Date; b=exfZTsoM6EE01Mwg9VgmIE8wcsu/QlYu5j7xysrUmJVWhh2lER5tYOAhv6QK+Ma3cDEwolilmYjgAwrLDlUDjkPQs2yjcIQh6PjAAjmv/zimAh7pYUo8h/96w4lZCzX2uiXZjrGnSDt0KJnq87/38oZ/O1c4vev90KOY+gOi28s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbsOyQCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbsOyQCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43FEC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756682393;
	bh=SmNir71Y5FUkpQM3Fll2rCeUKKn0VqJqJzA72jgRlkg=;
	h=To:Subject:From:Date:From;
	b=qbsOyQCHweCK+BpdBQ/md1SrWhgF+pYkvbyyJ6Y//VVyNP00Yd2V5/uhGBNhifCkz
	 uae5EWxJdq5WD5HxiVhnx+af+kyYjzc3JW/2AfYHkCgnTYxR8htJU0AEZ303+7GblT
	 zVM6T4jLBZfr7Vl4P0OQgAIebTKs7G1Ix8OyrRQwJEZefz+/atrSkn/OMUT9wlVb9v
	 9mZ2tIo9ji4vAwaV7JHlqrSd0a/Aby+1U+ujYHYHkqTdfuPFwzu3ex/gD2GthSq/MJ
	 vBG7Rs9JsxaIs5nWjRxcrvUm2sU0QFCmClWUF4MkMi+NjH7NANR5Wuija0I13VVmaF
	 /U+WDnKH42rRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B0CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668239357.9782.8580251070423903106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e811aa3333b475e27a1327553a69b8341bda7c58451721a5a1be868a67ba03a
Date: Sun, 31 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756682393
