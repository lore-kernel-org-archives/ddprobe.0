Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD42156CA
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749356994; cv=none; b=ZZC78d1is2tCKvMFMn/cdN/Fc28YZxMxft/HRPo1bpKZ7uFhD+LL5Hk4tonssEKf55x+H5L7V9ZQ631Ai5uDaLL3Ep+DoC9+/V21yuNSNoyXiY47/jzimg0/oGlJvnnItyDHbHntmx9e1FUr6DASkbljPcx4C+Zd6TF9Fo+scsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749356994; c=relaxed/simple;
	bh=fvpLXrMAkc4FHMFwIP9ZSNPVVdPn3g0ri2tROTkRW7g=;
	h=To:Subject:From:Message-Id:Date; b=AJCskqbZMjhBGTcePcTeGNlCHvPffKKaWW+1Jy0PwAVSlUnoB7X27z54ZY+A5kI6wZtDxf3/7mxYulTa2hh8Er56eCF9O2T9ambUwMdsmrLUwUF31z8vJh6wMI5Z3QXdmbhlZqPPTwyiXcpuurY0Kb0lGjwsniNcVl74hCEoSy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVIaENSC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVIaENSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FF8C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749356993;
	bh=fvpLXrMAkc4FHMFwIP9ZSNPVVdPn3g0ri2tROTkRW7g=;
	h=To:Subject:From:Date:From;
	b=qVIaENSCxq+QIcvBPJdAd7AUbCnWu2rjJuTvg08iqVrAXhwjrD5VEhL3AaYZu6Yie
	 kSI4UaYiuGidGFQ+7JIwY0OpGhZpoQVzJaWHqCqaHb/EaTEr2YYPu6KFjwNJyRzDVo
	 /mAOn9JdzK501LzLXaBAn8exaLFdz1A7gfaNJoVhZU2M7okM9Y3K+tDxvxKziQgzHl
	 3Ey/pmO/dUBvY85CySWiG6ZMjFwB2hs198P/g377BG0k/xA6bb8JQov9oM6WYjG6Fq
	 6NDfywOLIYZe5BKRl42NSQCf6URqt3qr0TZy8TnI9YmloGT98L7IbzbAHICfpT+7Fx
	 sNME6SxbvCJSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91401C61CE8
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174935699357.21102.5194400134165476806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24807bd159f085433fec66f580210023a57f8ed79c12843861169af14111c9cd
Date: Sun, 08 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749356993
