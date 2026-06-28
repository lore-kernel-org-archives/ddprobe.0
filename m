Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7A222097
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782616714; cv=none; b=od1SUbfOBKKftMdrZ1cmnfBK4HtJOXhZAZ1KlH+pcuKIMnSXF0CQDHtxXsEuaMHJ5dxi6QR0AjZ0/MidbcCXK9mK1yB9Ui1rfnfsImwTwk9sUcazX3k6DRUt4Vpf7G0gSWXu/PX81jdh4ENKOOL4rWaf15hdLiLhenwOhw+cN5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782616714; c=relaxed/simple;
	bh=zlzXMYQDqWzNexCHc5TbuGYOIHsMP9mENT7RVIBe64g=;
	h=To:Subject:From:Message-Id:Date; b=OveDWDd3Y5SNMOageIZkN52WOKN3B2Ro6oR4CnnxWdKYlIFALyqAycqrk65tLyzh8BrrFSNZ2znpeV07UTjNZsU/HXYHi3fMq+Os9rID/jFr5gt3AvNfQRHzUZtED8qv1yCMZZYYMjvg0nCp7OZn7dRTXpqVcPWGMB7+H1EkOr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz92Wk3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz92Wk3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0152C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782616713;
	bh=zlzXMYQDqWzNexCHc5TbuGYOIHsMP9mENT7RVIBe64g=;
	h=To:Subject:From:Date:From;
	b=Qz92Wk3umXiLoxsLOkxniUyVd2wffo45asC3fcre5u8fo6EI41ww5/d/dSqpZtvrs
	 SCFxWGFdQfJ4P2c4kOQjzBpcUwlnUrFQxK3aNF1QqNXSXfmeAXKGez+xXNP/QF1z3o
	 IYoBQXj8rCPEE4sVs03/Yd3HVhEaOxnMf26wu6pKzpKfFJY7i1O2LN2a728dulQJwe
	 q4xS1UwWjfFcEf4Ro1onOMS5ScgNV5nGKH+r6JylZcDBawG43JZEPpu4Kau8M7Rt1z
	 yhWagp4gBseIoNY4ObSXpw+BCMFzBWucdNptff6zddK1GjDNaruEMrobzr48ulCeYD
	 DuUWNUKUdh2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B44C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261671369.3883.4308258477220303560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf94063d295c59e72b340957c3b6a963b169a6d12588c6794257491979d9abf
Date: Sun, 28 Jun 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782616713
