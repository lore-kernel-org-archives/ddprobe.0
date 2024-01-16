Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1CE125A3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFufhht2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F87C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705393096;
	bh=+AVAJRs2mb5cqdMHmS03MBUfk8mx9AL+TW5VJ/vJ0kM=;
	h=To:Subject:From:Date:From;
	b=XFufhht2uWi/f/1qV0mv5aeW7vxprdgg52WAwhW8sbPgH3K4Us7ky1n+ITippaeSm
	 9KA12MCrLE6eYEWk2BISNSTAgIoOWNh4dyHWZDCra3mk4YDqcZvsRQl/lJ1gbwOEpy
	 gcGALDB58eueX54YnQcgN0thEcCZvpXCq85GQWVaKrl40p8LclSYBweGInXbPR4TTS
	 jgWQ1tOJL3KtMndg0nI8QUkgdZwke7vB4BlpQPdPLbVboNJa7UIvxxn3YP28NpAMPr
	 90mo/lm2hkA6XS03RjjLM2dfT4rXotQ5lyXxoa1/3W2HlF4pwDeAwq83kycLe5dxyn
	 Ix67ugNKUp++g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B407C4706C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170539309636.32127.16466373321108804634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca8ac2e60aff8274ece02bdb80dfd998dffcaaba02dac9d140f4b4f2c589b7c
Date: Tue, 16 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705393096
