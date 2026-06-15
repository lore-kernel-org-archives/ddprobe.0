Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2852D12CD8B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781490394; cv=none; b=YPazGsGfuIZRwf8igCYu5nbN8e2R+8VAieuw4BF0EnLRHugSF51qw/QWz6iwYsk0CGop18mdB+/f92Sc3nVKjru0dSjsynNLq5FhzjIvzzAz6ZyklkmcRM4qgMldleSaHtNSRFqR1c2TiaKbQMqJ70bZg3rw8zFUJlOTCUGux7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781490394; c=relaxed/simple;
	bh=eSOTV4GeKNWwzhMr6FgwGpKiC0ILMBG1n5aw+LbB6ls=;
	h=To:Subject:From:Message-Id:Date; b=cTA/LKxkOdHiyn12HkEwoE/qPumjtLjlyBp0fkVlHL8PaJQvf9kabA8ODF7wMZpvONt/VL6/vreiFdyNRQMJOr4OViNEq6MrbpFj4IKRwKOip7eIAqqa8jGBfvmxBiq6gyr5ZhrDH6OpMWW7+Rnb8nzZ+OzmAUZr+cXDx/Yjlus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjMcCn5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjMcCn5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3674C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781490393;
	bh=eSOTV4GeKNWwzhMr6FgwGpKiC0ILMBG1n5aw+LbB6ls=;
	h=To:Subject:From:Date:From;
	b=AjMcCn5b8WDK3uTmSJNQEBq2jsg+Bu+2g5bTkztf8bSQBtW6EAZnEJYHO2FpLYNtB
	 ySyxOZgTlEaAjzq+jMpVPl7KAG6JKsC2w7uhyO8NGPZrhOtwwAI2Ube+03kFlaVjgT
	 A8ypTmTvXQ0fRl5HtggHBRSekG5TjAE2Kt+ktYfION2QMdcUkiUOQk5v1WOnJPvbds
	 97jCySc6Idvc72m/U83U4rGTatEUPtyeQkHZ645qOwQRp9XTrmKc6mIWryLYbZ2+Dq
	 6tTyQzGh2FxTukVb5j6t0zvZi12fBXS2xzsHGUx6RsSGeIQXUUCICjEZ8Y0ClMa7F5
	 M/VscW6xurkPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A966ECD8CA8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149039368.10329.2776102799400280852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f953dad51f8cd08551f7b999a627671c69760824a8be8e8a199073f9aefa464b
Date: Mon, 15 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781490393
