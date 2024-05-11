Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5AC1CD39
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715463743; cv=none; b=YSkLCwG/6QIH3+NwyxEYM9AWxC7eV1RKw8p9Bq93rUnW1vSJytf3iGdrWp42843AD7+MwUZTvKw/8nT9m2z2T5LzajJWfk2fBV+NzSKlhtQEmCG2uXP1viGyHzqgldM3H2yhZEifa7FZCyYa9wahpyuyON1CIcBxnQcqooinlfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715463743; c=relaxed/simple;
	bh=y9XNwEfzfyJaL+tIU2jN5u1yuLjrSkfIKhCfhFxgIL8=;
	h=To:Subject:From:Message-Id:Date; b=OQBqBjBT60eDBJZWZwnGNnpQE+MOD0/W4aPXt7HY4WNgtOH9yJo/AqU79YU/b6BwBkUlvwP6r3T1qI2IlaLcUf59XSjPnWJpMbgqCWB86cCv2p7+GkW2UwyTYlb118Lv95fSEJyjw6y2YWBxxdp8JJh7SP+dHrWyQvbMKebWlBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEoXl0Sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEoXl0Sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D69C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715463742;
	bh=y9XNwEfzfyJaL+tIU2jN5u1yuLjrSkfIKhCfhFxgIL8=;
	h=To:Subject:From:Date:From;
	b=NEoXl0SbrnDdQDk42X53sSLsu4dYKxtsVnt7OL8U4JYJQzTnT7fcAwwvFJKJkTVGh
	 PAVygmx8PS5Nx6xVCbs57n2Wa7PnzcSivmfB1eQ2wIGQoEqyjjqQB32rDZ+3WfQgOY
	 eCoCUeozNjHdwJFVRm/tJ9qwoKqIsPAquXq2fo5p6oIIX0gcj0aeBYGrOfKRNvGN6C
	 6sHNe9iEdw/laBppR1f/ecEDlw01cEgOhp6nvg/6Pfwc8yWJDEChjTrSIZ19oRSdIs
	 gsJS26xVS3YvG/gXlqZqEs/3HxF+BBSZvMkbpdXhZHIMt+DyYZncTAv6JTKiVs/A6j
	 w7OKCDhwhWijA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BF0C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171546374277.27606.13465835595739448946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce36a142a675d49d3196f31722cfbe7c77badfd7970907c1bbe1ca7ac278fed
Date: Sat, 11 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715463742
