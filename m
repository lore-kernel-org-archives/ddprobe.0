Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394864C6D
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774692294; cv=none; b=sVe6l0Pr2SOdyZjiwq5k6soNGzg1yRbM8WPSBwzjy8bb39ZbrfdKkKac++R5S/qp4BUPrzEOmSxWDI/7rznl2GIEVISdK1XvHdiL8BgjLHvs52txc5I2WwFe8JWlRS4WGxGLaFBfD3Ii+H9lvBCZV6gJI0CVWGcRejr0qdYQNyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774692294; c=relaxed/simple;
	bh=QpYDmFrXTGLoNyrS0ZzRac+5j957irhniWmoP1Kh61I=;
	h=To:Subject:From:Message-Id:Date; b=DYZmDxzXKvLauaLqaQ9aG6vInr8IG7sv7Ok9BZ1dNZvNoDMWEvKBA4gJ5wzzYyN5VwCUTGHHskykh58jNXGQXyS0+TNmm28hkZF2YyW2Cf64cITe1VdxzW7LEEt0Ih3XCwaAiRHBlBhC6XdSvug0sbE6W4g5EKGRJOn7lSw2P/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQFYxjqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQFYxjqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF89C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774692293;
	bh=QpYDmFrXTGLoNyrS0ZzRac+5j957irhniWmoP1Kh61I=;
	h=To:Subject:From:Date:From;
	b=XQFYxjqATiZ/7ntZegfOuO3ys7nc+wDV+PlLCHjKrxTzgNAWAKpq94m6OOL6JFgH8
	 a3tgrL2KTKU14/Bd7bzpzz8kbeGKFMxegOZVaFvT8T2FCydFaKt7UwC7z9g2CeB3v8
	 jN6tBsy+U3jWB+aYemDsCUPpePGB+x31Lp5eoeEGd151xF8VobfnB1eebGzUPWvPmY
	 aW5OJBRa947Hf2a1wxe2ps6pnWGAh3YedaMj43gLy0SCQ3GNZYvAqlb+THEt8iEkiC
	 BS0e4o02XlkP+0tpLkzcO2Gl1EIy+48LO5DCWxZaYbsY8cq7q/mpbeHKIWvUNA9WHx
	 G/gXO4NFKsy3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982BD10F3DE1
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469229358.24359.738343498458892734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b894e2ca3b70238a6a76b455242abc3c4379c7434e3cf826e694fa0182f1ce10
Date: Sat, 28 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774692293
