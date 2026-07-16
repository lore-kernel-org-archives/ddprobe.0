Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E5042902A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784212114; cv=none; b=KH2bFH5PzbwAbmsZzWOwNg1FQeOAIl2IzIQfFQOXHwSkG2UAox7L/jNk0MSXr+5gAhZdXSkF2CN2BofdIy6gjMWJLif90XMz8O1GHb7piUYrY4OqJ/p7PE7TJ3UKQBq+YI213m0xPFZVdBKCWQFqJ5bRj36lLBMDKq2Q8Jsfzvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784212114; c=relaxed/simple;
	bh=4N/IjsjzOy5ryes3DQ0gzQiZFJA4ZKBeGzutIjU+v+g=;
	h=To:Subject:From:Message-Id:Date; b=Z0rlyweM0m2G+2aTXbrB0cd2PqiDNAa5ugrjHfTner5Twy2bl+fG3cC8Uo17kKbHVzOdJMI/BWUqI6NzhlO7b41raILcuCWFCIGm1jpLfSGAuo3G77KBKwyzTJfV7D66PO9UKHwQ7dWZLrIBP4WULx53k5+r5kh2tJ+sMiw/H8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByU8YpET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByU8YpET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 330C2C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784212114;
	bh=4N/IjsjzOy5ryes3DQ0gzQiZFJA4ZKBeGzutIjU+v+g=;
	h=To:Subject:From:Date:From;
	b=ByU8YpETyGEviqUqMeeNrQj+6cgvzHrTKEKe88dTa2oh3lBpYW4HCTz2XzOyrXdax
	 lpbCf+oAv7CGnMi8+/SFLrCJrq8eLDTqmib9haeh2XKqGmFyJyIMyjiYxK2rVzbQv5
	 6S31RWBm1rhFhDqRYJ0YIXmT4osSqsfj4pePM2XZvTFvGLNXsyVGdD2AoMyvqYDrrJ
	 gWDvA2h/Yrpc5VXBwLMDVHCQzPJA3/sQBpnodhOMzG7xgry2h3FNYD/wOmTHiRAO40
	 mZZp3o1P+6rFHx4HVCJaHGcy+DYhCYp1S6X0OSK38f08RdfbY+GWkjTlsQ6UsBmh4T
	 R4DOPK9SNLYTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD0F6C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421211382.15134.18220689076455621351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a18dceb134434ca154072f13519f623a9e9492ea2ae0681430f031280e1f98
Date: Thu, 16 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784212113
