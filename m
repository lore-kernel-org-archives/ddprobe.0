Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2B01FCD0D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732712754; cv=none; b=Ip3ne3hxEAyfDthD3vQgEJ2ykammaK6G0FLSWb3K8b0j0mkV+B4kFUrjprLILIicMybaI0+jCO+ii3b7RjyfsnbHhpnuh/umtWxJw+vdCy1by5482nEPEwbvwCWqtUyWuIRScUcdvFVPsX+KlN1t7g7+i/Qt4g2ubF+LkyOdJe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732712754; c=relaxed/simple;
	bh=9wpKLfRwYWbl3WSjP8yjhGD2xyZoZwRtsbXZfChbdCo=;
	h=To:Subject:From:Message-Id:Date; b=gkslARG5KdVgm2yEpWAVRRdpQLccEsRY+5rqdnQ2tngmpxr5UZV+UUmqhclOyhf+9DF+5P5z96kSQ8A5Q9gkiEOFVJY510Zl+k9l9KbfGpMCnxa0gmUjXsePZvPI6GncTX337iOAUstmB3JxF3XxVVJPawAJN/bTBcy5qSf8FTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5MTPA2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5MTPA2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B763DC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732712753;
	bh=9wpKLfRwYWbl3WSjP8yjhGD2xyZoZwRtsbXZfChbdCo=;
	h=To:Subject:From:Date:From;
	b=o5MTPA2oIvEMIDykcAYJ6eRE8ZhyVqWJaPQF8IAE4mRhfeRAeWi/lKRsFAROsKqrr
	 5/6UxMnQsmlihNzWUCQJ4O80QqzMM2/dBjcvc1FDWG3AgT1z6bIp5kgbmWnNRIrqyF
	 d8y2PNasGCRVlfKyd0nSqNh3uQLe5Kqhp+7JwA0AD3b/fuvAGtepYf540IKfsEVgXw
	 4BulxDWOHjKfh+wApPEdMFueu3E9oHVL4Pn0Ck83Kyx/jqJar+s1Afa7LyzbprBH83
	 Zjn+pNrrYVCe4zG9i20YHR9WnFeC/ZJko553xik7z45IJ5Sii36YWFjrym0/auUnGZ
	 3hYqosKy9HfQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DFA9D6ACCA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271275363.12589.17062073960086156810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84483cd491ede3fded51eeada10a563fb2dbf09a4bb811bf0f47f90a052ce106
Date: Wed, 27 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732712753
