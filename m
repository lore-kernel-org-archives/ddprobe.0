Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42712A31
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 03:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB0E1C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 03:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674531186;
	bh=re+4aIWjN/YbGkKg76zPpxQipyx2fuAnGxqvUA6PDCU=;
	h=To:Subject:From:Date:From;
	b=IRjT3EYtepnI6JkAdhnfSHK2po38OmpR2OubqDvaIQu61/aZbFukklZk92UZMve+7
	 aBx4Iy1nuhTUjU0RYkHMdty3m8jeCHhiUaHlNq6N8ssWUuINSVmsZ6rVw8wAhPcB9X
	 ICbouCmJ1CBx65yTdaJD+8A8quWGaImEwcQ6iTuzdqVx8zBlX3m9nWCbsmzMX516Bd
	 cdRdiZugZogyBhNcbhAr7pTxrYtP5mMxR6OeqGE2PdYAqdFAtC0ClRsGX5tcpbOsaq
	 bVZ8XKYg0+2ZP+IeOK5QruyEaSQv/FjF6gqYw5y0/dUbk5ddcGN897BVZBZ7BYgUgv
	 +HzACS3YTbK4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C895FC05027
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 03:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167453118579.18455.12066555853005766478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52949b8342f73b9204d6a572e97df8f7a12e759465e437edd1551dd41a4bc208
Date: Tue, 24 Jan 2023 03:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674531185
