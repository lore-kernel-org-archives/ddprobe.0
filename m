Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764FA15B4
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 04:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB24AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 04:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694233448;
	bh=DcNd9hWJRrKQaakz2IImMaJH772xOw3OZs01zXdW5bk=;
	h=To:Subject:From:Date:From;
	b=hxvIfrUSHi1sB+kcdhg9PMYsriP4B78zBo5hdt7qoZtYiHYb8F1JfPSfHoxhZ++Iw
	 iUJEGqRcUz4wwL4O+frKF3ERV56vZix1hZFTW8bjMnVUa6LksfvrOrxWmJLIELWi+D
	 LqNFwoqaOReU5x3i8Czc9FlTWv3M9X9XPal6K0AQBFB+uUYbX2mSC65/D3G8hR7yeZ
	 jCds0eUTZnsPrRED5UH3iPkkHGImtwJh2FWnsLn0AEvp9Ep0v+GZAkql/64kZntDcz
	 bUOzPfly0XgrKKFWO7gzG+z7mME+bHq7wklwh02F++R/QGm0LauByDlXZfK3om28dG
	 9f1E6BulEU1UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94D6EEB57F
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 04:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169423344871.19695.17376976891466454020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63b030410c5474129b55d8aa904783b4cb6d3fb022ca2a499c4761c403ae1b74
Date: Sat, 09 Sep 2023 04:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694233448
