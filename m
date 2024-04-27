Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5D25CB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714177343; cv=none; b=ZS8Bq47Z+5HNS1gqo34m1E0N+A2yCTLL//6jgfKGky737KRMmBzInP0Tb09RgKZcuG/SiltGmsRSMZGO4dwZk6d2q69v6v7XhgJ4XhGUkQXUqSAOrkkL0LWIn9C31nDkj9R1HusftoOG2igtC6RU9u9T+ksOlfxt+mAOOL1rZuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714177343; c=relaxed/simple;
	bh=KyCkMZJEVacmTC+9lJWy6BwV9nFyuzicnmm2bvCPM+0=;
	h=To:Subject:From:Message-Id:Date; b=P+/4E73sVjGQfB24ddQwrdrmHGWRjD20vS8feD/qfa8NJn46/OgjfuM8bfJkL1rWgXHkPDEAXALukxuYOUUYgPUTe6dGmUGWrmT/N9R4CWxxDY3+ClAaWZWUFtWuTIOtMjt+dvEVqJ2h3m8ax5m7p+bYBAtFM++/JN07d1SguBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zrif5vrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zrif5vrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7BDC113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714177342;
	bh=KyCkMZJEVacmTC+9lJWy6BwV9nFyuzicnmm2bvCPM+0=;
	h=To:Subject:From:Date:From;
	b=Zrif5vrSIh6LsYOFY7h+hHji//yHFV4e4PCcwfcKlpDXKF1dCup9G+kfhZ6KEuM1G
	 HmOXqU2h7MKQW84Io126RyjYFyPM6XllmTwPmQZ2ixrCE/1c4gMAbn8FQ/ZLVLp1+N
	 1djidqrn6VzvtooAgySqMD7cU0CrRJheFaJAjhrihP43kkAC89mwbiz+RNYhuDcleh
	 Vz2p5fEwI+2FvpJshXVaX9Sr9/fsxsC5ENDYUBiSWb0NzXq/g3nMdUeiXnJ4fSIOCc
	 /xC+K2LrAQUNyZI3JKD+Wow6b04hO3TCRNDxHZ13g7w/ojUOsL0GNK6cnQo4zl4FK/
	 2zrhvt667P0SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5417C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171417734278.18245.17024840847759821806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276f07e39f78587daf359b732bee03023bf5adef474e1fb58507d3dad4946f56
Date: Sat, 27 Apr 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714177342
