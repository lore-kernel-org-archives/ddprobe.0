Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580EB25B091
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786834834; cv=none; b=HuOnZh+t+GeQxTtJhV8DAWBYo3x3hsJ9n85JS1Qm9Bsj3TYrY2KiH6vXBlEtw1zN6kdO/3mIcvfzgjsLxdu/aqwo2vteDKWoTZSmq6WHOw32JmnVt9WVKZCbbiTVaPLrcwk9iEaKKvq121LDGTQaV6m5gJGSZb3i/+VzBfIRNEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786834834; c=relaxed/simple;
	bh=b23mLG8QbCs4haYZKgUnncl/3wXCuWsbjuhiJsJ7YkU=;
	h=To:Subject:From:Message-Id:Date; b=Q1QWbCSYD616Thd3JRq5mnh3g8W1fnJLPYE/rGmYsy7R6Q5kHaq3iRfQ6jV+/RRmbZZWfRbDj0pp56mkNxk1Gm+N46O7Ts0Di3mS6mdbIUG54BfolDvp8cqTEybeD2b0FsBEnJ6alz4olQ9BOedkhLZXWs8xbu5yXcbLSWfP8p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNnCDaFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNnCDaFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAB2C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786834833;
	bh=b23mLG8QbCs4haYZKgUnncl/3wXCuWsbjuhiJsJ7YkU=;
	h=To:Subject:From:Date:From;
	b=KNnCDaFTj+gtyMBKZOgzSqjNOlyn35cgbdB2eeWnBvv9PE84g1DixZ2ZOdvrv4NVq
	 l4s2XL+ff7lhN6bdCIXahoKI8jRd8ODCUbD8BBeUtXjD1xNl+IDoS/MV2F9cqtRDfV
	 owCW5JJq4dZqDwxVwfKecRxq1ZYFYVkLoMydpzlPL4sFoZQa9LfXUEAaHNVRNj+K0+
	 2PUlCaQ3u0+1k6o0His07IYVS5ZSeeKVo83kEDoRs8e8+wJnQOi5Wq4NKMC42TDz+3
	 maIVpW1zJmMptFLiN9YW2aYKOWkLUTbLNHUG502ZIPhyX+ZFDTj2jVHI2t1vrO8EzO
	 lRS1MT2XNk3MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A56C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683483368.21600.13765285210035742814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a312982e006a32c7e501f7a92408eea63554857c162ae2775e241a3b083d50a9
Date: Sat, 15 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786834833
