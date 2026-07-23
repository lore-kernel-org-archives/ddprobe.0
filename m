Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48166411F88
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784801975; cv=none; b=PFF+FFL6Atn3DajLWi0MAWY/323BVijonvuznZ8YRbXIY54q1QXYeQVfi6EIr+AuQMQeUm2/Q/XZK5+d6zmxObwMZZSUbmbMiwg/oIPoTd+wRZa/LXZG88TQzJff4J1V/daEGUIGbMKOwI3TaODUhQ+8JsKXaTY/fOTvGD/XzcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784801975; c=relaxed/simple;
	bh=MnhV2dvzyHkBpewIKYelzT7n4ovJacSXVR2v6Ab5MrY=;
	h=To:Subject:From:Message-Id:Date; b=Z9rkexuY/lPxmMRLWJB1NZveYIgeYOd/EpGajNUA3aCoyNw05zH06DhBN86QcZN6dfCvrBaXuQwmW8JRLHaqJWiP29E0Vu5T3vflv+E1t8n3wMOVrBqVoRG2/SGiXuibUhxM+CMBKZyh0Z3PckvH9UfGmG5XNMMcc7oKIdbN5sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbXWGhnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbXWGhnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DACEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784801974;
	bh=MnhV2dvzyHkBpewIKYelzT7n4ovJacSXVR2v6Ab5MrY=;
	h=To:Subject:From:Date:From;
	b=LbXWGhntJ3PJpQ0CLQlYpY8Qhpji6SreXop5fH5fCexrg+oP4utBLWw0czBsZyh1h
	 jZhUISJbdKKj89mR4aL4UH+wIkDqSSHXGq21nHXflkoVkEO/GC8aWJAo9+2ZUtlzlr
	 GRyAILqcjFvr+COvhRYHY3lWiGAZrZM1KDsKAmyuFWFGG4/dqPVqfOQMduEOOGrrST
	 ucl6BWzf18LmTSWEouKiUoxWQUznJOXHZzP/MZL42qDPgFMBDvuY/NgCVBX3pKiu7C
	 7dPxJEpwoqZfAUyAKCSP1JYQZpBqQ5WPvdhXAlxtFdlttzc/7u3wCbYR5jiJ1gas4E
	 QXOfbAbxNgxOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EA5AC531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 10:19:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480197405.393.594641996000948770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e91bb4ae3f3602937a1d6590bfd1b588110d594fe3bf13ae62b0054c379d7e
Date: Thu, 23 Jul 2026 10:19:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784801974
