Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509C615278E
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749784794; cv=none; b=C1bhz4RVKtoXr4shNlwG+4jKKOc9QmClo9O4OesTwjXZAfnMbi4yn1LS0Xsqvqbk145HRNo1H6X4Tynh3bHImzAv+BZrrr0kwYWJZr9ie52gwsXd4vHHV1+2BTIz3kkkybyyZ/+u6pZAxkJcr+aLfrb0ycstFCYAoeff2HSI5qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749784794; c=relaxed/simple;
	bh=VIcnGxabdoU5tAJnMqik+ScI/nWdVuhacyPhivPu1wI=;
	h=To:Subject:From:Message-Id:Date; b=gmpr/oWQUUmk2spuolj9Hv8iZT+AD5hN1/PRbdt1/loaXJmYX7DIxEw2gfmCNtWO1GcTe2W5SyE0B9id8m5Pymqj9UTGZ7tHZge4NCmFnde20XcD/V2xiFY72RYEQUBrhNUOly3e0WvCNKVHgmNTz5LRzVBdseGQ/XCqR5dAH5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRXgVy8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRXgVy8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D5AC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749784793;
	bh=VIcnGxabdoU5tAJnMqik+ScI/nWdVuhacyPhivPu1wI=;
	h=To:Subject:From:Date:From;
	b=bRXgVy8wZy8V/gbqfmlBU81UcqiuKiWtO4orTCtCG6TFM4+jmOrw2kM9yt7Z4yaIL
	 lMJdGjuDv5B9qq1J9fDsgdPC4UP/bd0Pf/jgOQ268xeIz/t7+FTjU4HVcG6j8eLaFx
	 rz3S0lK+8mwJQkiyUBdMVA1Blp7zD5Nz/RI+/p5L5KXzd4smr5IcPef+3qqx/I8fzZ
	 fhhyYHYYB6Qm7VRweVIDivrc89Hp3cmyjK6WvFys6Ux/bRSSmi3DGLjzfL/ih3FKt7
	 94M1Th5FDS9QUZrsg6ZW1z1JoLvz2KOVViVhs0UTITf1AMsWN2/Cm96dZkElgktsrz
	 QhKylBVT9yVVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D704C61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978479363.23425.3142893538094431246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e6800550d550158acb09470a4cc0963ee005166fb59aefcfed52c8beaa01b3
Date: Fri, 13 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749784793
