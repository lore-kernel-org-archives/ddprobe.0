Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E0013D521
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762391994; cv=none; b=uRleTRHB1t/lQwFIdhX8T/t3IbpZE3i9i/KBktA6KxCu5KPhD2Es/kpPAqfhj0vOwfrtJkcfyMLJAKZ5KSJ9DTWv9t1IPy4ISAvTIiz0R6Oh9G4D7xORTJdyMqDhutUd7aZUujYdg3DO4WBwjz8/P/uW5QiRJ1Li0xjssFXg18s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762391994; c=relaxed/simple;
	bh=7kTLMJVszs4HNkdk5y+gaF5Rbg3PMs/k4i7pFmW7dwg=;
	h=To:Subject:From:Message-Id:Date; b=WyetQiN0c4+L2qK76LrB8lsQvTO1kefzl1BjiHxhS/Nw3haw7WbUQ9Nufg1M4yOjCB8DLWUyqhqiCusRfr3NSHN/WSVkMauPQMm9bw3wggelKrkm0sqqh3fLx95Z3qguq5hBFmZOl+u3cy2MKcHG3mxFctYWRQl/So/BLP9Gn4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lScrZXaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lScrZXaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D82AC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762391993;
	bh=7kTLMJVszs4HNkdk5y+gaF5Rbg3PMs/k4i7pFmW7dwg=;
	h=To:Subject:From:Date:From;
	b=lScrZXaODQunr+fvYS0aEWZHRI+Gb1sxdWukeYXvtUnMbnlTqVxJFIlGnxKMKXi5P
	 ikOOeRCe5AoRuMw4x4woXGXAfnBqL44C6F3kvSn1dOnCT4oRDMwh+TbAU7/QTFJ2fm
	 jh5iQuGuC/LmAITihvRFVOH/RkpEQH+uE8DBlUUcU4j1oBe3XxPx+c/Jd4ZwNZdGU8
	 8YVmsc9N5Ifx2nbalWEe0S/oWjy7fkKAJO2/tmhMZrgy+dulM46cMtIDppIqce40HG
	 tjHVFn8pURO8YkqH4YFjwhKByzDiDK6rmBQr232RXAcViV6HRryF5w7aiznxOCyGxK
	 8skrlobDhQW/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FACCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239199357.2782.7726888982847532502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b383fc33bbc3294633bb498ecae7fb5216b1f64162d51ee28bc854e6e59311da
Date: Thu, 06 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762391993
