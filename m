Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42207218593
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749716994; cv=none; b=nDT6twfPbFcshu3YCn5aSRUYfJQLBcJ5SU16hJpvmikZB6EoLcBGJB0BV6Mxj4jiDoos4u8f4pAvRmuPL1f5Lk2/1sU3hgnAa0woScnc2/YEwjy3BsS4bwh48zpPoBQ9NrpywJoM9cMNTVRYA9hzufwNM+jnOKCgz6LwrN5Gf9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749716994; c=relaxed/simple;
	bh=9xR+rXr2pDm74u5hnj6G1g6FRfun4V5Kfq1kArHBEMU=;
	h=To:Subject:From:Message-Id:Date; b=B/nJOgIncqgm49+wjlwVLIpU4mi4VWuqnJCg5Z8ZJ0ZslGuiOjDJMJd5V+6e70LB3bnMwKumsXXkxixs/KvLnes4bLq+w7tDO0+W5AKIROn6tTKAZduCM0LPEEIxreLdq8huvVVyatrI5/E46QES9+diAjnCPrPEVHV/YTZ7E/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/AiMl4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/AiMl4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51C0C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749716993;
	bh=9xR+rXr2pDm74u5hnj6G1g6FRfun4V5Kfq1kArHBEMU=;
	h=To:Subject:From:Date:From;
	b=C/AiMl4DUD0bw2JLqplRzLM2BpvVqGDnwF60LY5AOSZCxd8/ExwAICFsTE2MxNLNR
	 3Nj3e0Vi4quueZ3a9zRmOucuhTy8MK7yhR0srauCwfvMHEuzgQQdNqZ2xMBFaPeQ3R
	 9YSD98dYHxoVSwWN0i98e+auD1uh80NkZNbZvD9r43q1XM/4YSOplTB91+o+bAw75l
	 tSC+ckQhI64SZuC0KryagFLLsVW6/opETvtw3Gcr1fAIRO+xAWhbsE0GS5Vsk3TSP7
	 zB3A101qrh7VA5zMGtdm/SP10yYnfjUp8y7WN1Cqmf8hE1sw+TmI6wzYOe+GJnH+uA
	 hFqHAAAzhzL9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9542DC71141
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971699359.24020.2723101858818460108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd94561bcd35b057713738b740435bcb1185a9f9888e4d5a0264380e3f80355
Date: Thu, 12 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749716993
