Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEC0647
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748524794; cv=none; b=TuAJX4sl+kAaU9yFBut7lO6c9MfaWn9scP3lKmFunhyXzAyTJrxq/17OE6RJVq/GcS/AWC1xQrG9d62bQXd5b9OZyUl4xZVg8x0B1Nj+LHiYYtOqoP77Lc/bUkgiUemLjClDTvPhbo6A24/46BrxozUdUrOVFCTd/IXQDlfycKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748524794; c=relaxed/simple;
	bh=8odufSoUw++khBhpkYoHCFrA6qwQZZYcBqEd9wEAYj0=;
	h=To:Subject:From:Message-Id:Date; b=AOKuQ/mT7xjdHNvXT2gho5InrWdeiB+HCN/Ud5JngF4ium1jaQ0ejYG5Qp0KkPeKH1sFEeXpvUQO1Pay9ykGLHSr7fq+pm3WFGMUdYfP5UMliU3tHqLdDUhnUlBRMjY58636qIU6c8lUYGq821biawPq3x8kcpKaUQhUgkfbwCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIi+ek8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIi+ek8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3696C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748524793;
	bh=8odufSoUw++khBhpkYoHCFrA6qwQZZYcBqEd9wEAYj0=;
	h=To:Subject:From:Date:From;
	b=iIi+ek8cw9euTKnFyyR8oi8z+Ln6Lwa/ENy/LzSNc/YUOA68qyX6HK2qhU5BJLadT
	 +edeV1d6EV3Cpa1GvtYdoMdm1GHz1qvD++5f50KVA04QwhXQVtqUSUu1q6i9JCREwZ
	 B93bxMT7VO8tzpgc4rorq1eT400FuodQZtRyIlPp4Q/Wdh7E+8jMWadA5xGwbhO3sl
	 ZNUZ/k6zPeQ8l4oWyij6Exjf57B6MUT+SBLK0eOB8PQmy2risBprCPLrUkHNK2dDWC
	 3FEW9WSxp7INwNHD2MPfAL/SJArchXOoPFVc946Mr8Cxv7koRMV8ujDEXkJUCHsipg
	 +M7H1irLsAk6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A82C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852479357.17747.5068326358024706851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb19aa02674e27cbca1cda1a1cc3e80f5b8b2c9a301daaebba82bc9f23bdf20
Date: Thu, 29 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748524793
