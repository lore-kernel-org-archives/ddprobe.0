Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C96E2E11CF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749962394; cv=none; b=fWk0/CFIgfe3zOkKJ4EdaQhf02jStno4bXEk5DlQ2HigPUhwHTbOKF5GBISXmviZvqitBm50GsjxFO2OaLlwJyIsFTsfM9ROOXo6aKliHPz0FiQURmUtBOD1e9KIzlo8dyxbVf0YlSoH8Z+NoEVMfN2DZQNBoaAlmEBBDgDDrqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749962394; c=relaxed/simple;
	bh=Zd/rzC4NDXMZOea7GbMklc470AGSi9FH2f+m4fBBdFg=;
	h=To:Subject:From:Message-Id:Date; b=NYR3EyhM/rMVW9Tt/ky6gMrQV3i/6VIIm7OKE5tuG1l2abUdejtY4BqiQesI8mwnIZAYdG0C6yvVuQi+ZRrlskup9Q5dd05bXGtOJ/kbb6Cpf/Rk3ovdVztQLWiSOmsDyrFXhSw45Eo7aOHuG0yQyLrI8uNY5omHvDhPewRDn1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7gcoj98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7gcoj98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE98CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749962393;
	bh=Zd/rzC4NDXMZOea7GbMklc470AGSi9FH2f+m4fBBdFg=;
	h=To:Subject:From:Date:From;
	b=O7gcoj98hBX4Kxs96JHiqQbfFdP979Ml6ksLKkzyXdM/igi/nz/0wWgTqUbFC52HO
	 ym551FxNebgV5Vzp5mCEpkJdjGC2YNhLSKJ0kvp4UCD0R6UoyFpytnsfembIQUPW4W
	 jOG+yNvmNEHCxUHdG8YxbzsU5Awmqt2luG6t2Q6tJIUfr0Y9pi9O9HylKj4YuOuVqn
	 LoKJ7LZvzwDRTlSyIEXXkxqY3CYee0g64GBaUSfEKI8Rq3cQUt8W38Ey6c6VKOEbuU
	 2Cqs0TwtCWdv34/1w8N2aWIZ1L22P7+nSu1mlkWZrroDnr5hw9HZ8W3kcxqVBomSDy
	 WD3P/QTn5rqTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98280C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996239358.8530.6378149711899099436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f531a4c45322e85ca5eb21e81536fcb67c3085029e0dc4d2e1e7fda9e1b781
Date: Sun, 15 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749962393
