Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A831BD9D3
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758658794; cv=none; b=Z0PHAveiUIp2Z9wJk0BxY/t3XVh2CjfU3mdFjFQ+VfpTW1ag/740zAkjpSiQpcmk4Kd0yoRInhlQvMeWKtYCpp9BI1K5kFModp4avmCgtz6xL9xp4ta8Da3kJkiVDLgbvPi3JqvTi9oLya7rNMzq5d7zMOJ4DtLJrWDy83JD7RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758658794; c=relaxed/simple;
	bh=E8pr5EaPRxSEerigwb7dzHxex5GkIxC5ZQb/YTHBhRg=;
	h=To:Subject:From:Message-Id:Date; b=gyyXwChh0wYJ018icWEGqblVitKWfHib0nErW8h6eYOTAa8H/TjIqubAxeFoCCEGf39Yt1KqAQTV3LpKggKoUORrD2bozAWB6ENadSwEUijCYRv7D4e0DbfSJUwN8/YxDbuTWeHtnclk4nmMX1ZAVL4UV3+8ClBpG+2q6REbR8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcpCKlSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcpCKlSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C63C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758658793;
	bh=E8pr5EaPRxSEerigwb7dzHxex5GkIxC5ZQb/YTHBhRg=;
	h=To:Subject:From:Date:From;
	b=CcpCKlSYiJZDYnXLM6B09Eyrzyg1z8nCSRY3ZrcRXQj6LPG6atLnBWGoXoLf9U5Su
	 r2bYGhPD3FcuNaNY4vBfBLZEnQJqYcJ2uEuxpc4uGNyGa43ycLNjMFZLEYHUKvBgjd
	 UCNFe7I3Lqv27WLGUS9Z1xxnbXNj4B/lgbmFdJdP4BbB9FhrypVsIUb41gvofWaQ6I
	 4SmTzjDQyZz6trm+QCRAwYt/9kjXUI4Hxek20tMn8QpGgrzEZ/NifjfscT9TAc5+lH
	 1fNaJnayJx1TkcuxnJ0fdEoQ3dbYeDTk7DNdmpgHLEKaOTc8lxhZJL9P0/G4UmIFd+
	 BGcvzjNW3pLNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92917CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865879358.14651.2265455117461419588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23d32943dac03f4c95a6333d374cede33256fd3730df93e496879312c406970
Date: Tue, 23 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758658793
