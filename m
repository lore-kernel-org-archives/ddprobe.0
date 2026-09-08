Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71DE752E075
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788884434; cv=none; b=i4xpi8l5XMfUa1dKCGpOEIGcGn3gr1hrMYUfY1fWHd1+oojDvbnVV0bUaL8XQ0v3iLq18m6OayKzf4N46i6IKg6ahpM0Q90AfKIeL1wOR3vJIIbIlDD2SIyzJ6te5JZsBicaepvdWVJGk9DBdBjNtTudWj7LQpEx36CbOjjzEdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788884434; c=relaxed/simple;
	bh=PozaUm2dvqLlhpzmgvSQ3xXfN9Zx3cuiMN4PnAP8c2Y=;
	h=To:Subject:From:Message-Id:Date; b=MtrWM04Vrw4M11OC4iaz02jmGgEWwOjyCE9lN9SxlEc6O+aEM3VD0zhv+OzisZWAgDwhbGrwXA810pu/VzB/g47jsVjNu24Sev05+fHMSJemM1Y/roukfUk8hbCAW7vF5K9rbi59B6dyMlFusxbAixekNMoCpzxDMtPWrNrXqHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8vhqwwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8vhqwwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9750C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788884433;
	bh=PozaUm2dvqLlhpzmgvSQ3xXfN9Zx3cuiMN4PnAP8c2Y=;
	h=To:Subject:From:Date:From;
	b=R8vhqwwZElBhkL/XPXJxfzQjFG0r0L1qzxL4t5Dz5VXPTWQl6qb0QSGLTFCKMxlo2
	 gOJRmPcRYBPKC7SKgx1wrm7htI709QQ/kewjDpSH0whCwMx31pvHiK9lJTFkHxlBIw
	 QswPaIC/r1SclYtFqmYUZ4/E1hZHyBee5g5f8R2PdUmKc18HfceQ7yyfCKY1jB0SD2
	 4uXUB1ChZBjKNIOHUgw2WALbRwoWUCK2IFh+/JPbV7QvUB9idA3zAikEHPPHvQC5DC
	 r5kLfF+Q05Xcfsn6ztG4LrXHd5EYLiJH+h7ve/ulnjQbA5YjYzZim6eqXz8rmwK9KF
	 yCfSKLfkbwBzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2824C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178888443372.14635.4168142765886533701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdd168fb9de285c25a3c8e319a7bedbada7ad5304b9201237df4fcda2885070
Date: Tue, 08 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788884433
