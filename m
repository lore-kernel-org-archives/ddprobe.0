Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DAF13C83D
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723619754; cv=none; b=YHT5kURZ2U9vrpNw7eU/o6S9MLfD2zIZSFzKVZ7TUkLhwd6GpG7uKCDSej8yWI84ZioOYVxwvEFyqnK1wEIXd9Q8hLq7q8JgX3+5vVxJUjMoVUJg9ydAQa5cwQqemajwzqV+6IyxqsxCgOGkh3W9dmcI5ZBOHT13aEJ8u+urZC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723619754; c=relaxed/simple;
	bh=7bChQrvInmBB8F+2NHtStR5Hr/Y9XXqOkQkHHOGo4LA=;
	h=To:Subject:From:Message-Id:Date; b=V/TUygPJvCmMudRhjQmQ9DpoU2L6YMaALa0akiAwQzWm0zdV3JUMkQSKrlYqtWZwBOC3IcBOodIgmuqRsRKDHAF6/Y1Qu8sGhWbNp+8iwDuJjJuIJ90O3qrfLoyMPAMBFQeeIxDIaJfAsoJYNLp+fmKw0YLyWXSBeXwbHi2Opss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzeYWjUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzeYWjUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF845C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723619753;
	bh=7bChQrvInmBB8F+2NHtStR5Hr/Y9XXqOkQkHHOGo4LA=;
	h=To:Subject:From:Date:From;
	b=WzeYWjUvzuLTPN4qRcU6dzS28XTaRffd1ossm3Go7Z4m/4aMsF15X4YS0CXxNwXt+
	 WpSzx+Tq2LTYo1ytMpyYoM0JVoVP/oJ2DfiXJs9f2pkx8jWBfhfYRtyvtO5XMM4rOA
	 AHGBjF51RZV43Cz7uhK9acJjGkoK3Pi/qxtx4vEoRuDX1LYBQqTqMgTVOoT26IcWqk
	 SjeUILaRj952KO4VvcKkabITMe34jqHAWmZoHge0WuMWJb2gf7VQpGbH1e0luTWEKL
	 yPryJv+0uUSItVqTH4ca1If4WzYng1SdUtnwU9wxJhuhkr41imsiuZzYqfVz+NNxqk
	 zj2sm/7xqGrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E97C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172361975359.18775.16291174107550875444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d744915c812f01c062784fbf3ed58e6b681ae06a0dc2f1e336bd0a00f6dd5d82
Date: Wed, 14 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723619753
