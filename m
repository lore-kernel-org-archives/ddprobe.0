Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9E928E2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 10:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9FAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 10:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677322506;
	bh=pnTwI2OklDtAQve64/UvJuubz2QWDXMNwRExIH/74Bk=;
	h=To:Subject:From:Date:From;
	b=UMk1ckZ0R1YnkhcS93HwX8wqjt2nLjXqVdy+exTlNlZrDamRseSZUv6aPgR1sb3dK
	 HFcMnSNredGoIi4gcxaq75LluxgLzg90umccej/ZQRsGtNwt0fd01qrHKTFhWVNHI4
	 W62CyRoobI5QfSF1m6iWqxPm9tDLYE1GNt2C5Swzw6k+UgHOZTCOop76Rs12VJ8sk5
	 3CMl6JPFcdf/toHNO4y/dnduH6VsYJXNy2WV51PErZ8tii6E9Fpdi0E9b8ORKiORsD
	 00Xuyu0toFvgDcYYLSDYn9mfloltHthn32HEwSAu1TS8jSSB3SlFZ77rR1e/dXL6rb
	 11z4YglQwr0JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFFFC7EE2D
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 10:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167732250583.27584.11035680261476271970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f0684aa3fda144e849eae6f241a1c297146dde24a8197b4c26c9ab6eb4eba6
Date: Sat, 25 Feb 2023 10:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677322505
