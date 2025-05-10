Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BC41E520E
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746879594; cv=none; b=SRylnCPO3uID2yFPF79NM0yZVeWlsQbxb4ejdFVzd62XfvTbUzbBpPWZepfnphwvtgbgrr6aG+jWKw0IETAGCxU54vOfyqgxU0/1IAH6+0OTGiPvCky28y9h+WwNfKprHbCxo1ULg4AihXemfpY8MBEeqM6NwwDohaCQzIVVYWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746879594; c=relaxed/simple;
	bh=nD+eQhJA5NnF9beAZUfsKPs9SKNaJh932/rWQCaQe5A=;
	h=To:Subject:From:Message-Id:Date; b=Fbsms4BFKh2v9wfJ9kbHEXTRomz3L6MDKmZkDzLGtChD4zEQNc8IHsOeCYPkVNe/E0xxVXGvBVPdcJZHgXvLMf6cWGhTnQVQfUu5n0DrDKU5rvcaZ+aEmad1u9k1xoiD/JzLCddUXu8pUofKM35o7J2gCwhIddLXOm4z8m1VyyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLGZtjj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLGZtjj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2073C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746879593;
	bh=nD+eQhJA5NnF9beAZUfsKPs9SKNaJh932/rWQCaQe5A=;
	h=To:Subject:From:Date:From;
	b=MLGZtjj9xozjSZ/ETYhQxWtAXv4CpjA0pYuDsc3ekVovPnCrBP3r16d+6akJDSg5B
	 0LXCh0Duv1LpjOJRc8qW9mbQbln2ieMgi+IMpoGE+bjev+byACbKFoCEtUCJNqIp2k
	 4NSfaX1m5i6NPDWgpyMYgkwvglVsyZgGIS/QWjmQ0j/aJGO6+mbavDIe1ZzHyt9Rff
	 PhGDvqrmHbPiQkTkDvvMVA1V81QZChytPB4QLOwiJPDz/H1g8wJjNpOJCAw8/9Rgk/
	 h9E4wr9Er3SAuJnL1/s9NOQmucX9hca5I3wlQZ6tgYf0EoEZk481Ck2MMC5zzCQ1Jb
	 Myi8AUt1cejgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F013C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687959357.5226.15386886471990923528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e6593e943481c8cabe03a87a6d6e52c6dc69bebd298b761dc2c460d524abd8
Date: Sat, 10 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746879593
