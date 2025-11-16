Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D4229E10F
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763294454; cv=none; b=hNvT1BI3L5cLtLLHLvlotea7VoJW5EkP9v6Grw6DgnUHUvvyVw9mBc3Ob6BdERbE+Utnt/tgeTQBcqjPMfKLwKaye6S2pCnqgamH23zO9MZcOllknCWiH7vodKDc8KGuoraS5tZtYCKhijpGiQZJkAVlV1+ClXDVLvEhmANv/n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763294454; c=relaxed/simple;
	bh=2GhUEr1q8ALwyiLzbkuVmz0sw9K4YG2wGRg4IMz2+qw=;
	h=To:Subject:From:Message-Id:Date; b=C8o/fiILBupKLAuryfzl/6cqd/Ur1fqHudDJHuuUN+AY7Qjs1hdMEKOREew3kj+vNsxw3YfRMpzyVo4nr8+SK1ews1tZSrR2GSFaEhkyn8JrcQDcc2OqXLjwHUucSG0WjLJX2X3sqa4oFoFm9I3MQ1qwlGsrUbONTOO6Vo/kaRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfCq+iwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfCq+iwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A9CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763294453;
	bh=2GhUEr1q8ALwyiLzbkuVmz0sw9K4YG2wGRg4IMz2+qw=;
	h=To:Subject:From:Date:From;
	b=rfCq+iwzlXH7Lr+3GHEoTPvP9chwG4tFmYQIj2kTdVG2vSymyMp3JD4K3Rd76Duhx
	 sKPiKu1n2qwQXd5RTItd40tTuoLtTV85JdHwAC5ZqsYzKGpzCSmMb6fwgRkXpj+4II
	 QKwZ5NJbF+gBhAfowfMWmtw4YxV351VsTmRRlkWw7WfM5KY2GCK6XiNrcaTJNa/GiJ
	 7mk08CG1pQMbv3yDzA0gjUZBYm8mmjLH61S/8cdWKnFddwnmdzsmJT0NCfhqL4VodG
	 31yWkw/zBC/jHvevTVwZwjzEwhKyjREwZwl1jGk3zpxq3Nsa4dSJqjhZCsvBO0ZCKe
	 rvfqStnoHHXZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A125CCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329445364.7435.572489663428898448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2190f8b86464a030b6fc95abafe91661b69e50dc4b41109b82a98afe9c87e17b
Date: Sun, 16 Nov 2025 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763294453
