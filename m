Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FFEA2C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7672AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663567853;
	bh=I4AU7xV5vuYEoGZCyJ9GneYAMXdHDZgjpNILlITB0YY=;
	h=To:Subject:From:Date:From;
	b=SNhV9fFYmQw0Khowllg+lYAuQ7zimscKdKB54xddNrZtX9YOCGmgbWzcYSHzc7wew
	 twee23cbNW20uzRacQgyqBkrm6rU0UXKZq6BxmPs6EmQ7pzibIUdsglsNbXSajXSm7
	 z4rHE09LbMHBfXyIa4w9+34Z3Ub85cM+oeisfjKssMNkzNlvVr4/RyFO6Z7rQ/nuoX
	 yC5d06g8au37TCXvTaAQlal6Tz1HiY2uTCVzW5Fu4FoVb4cyA1C0J1p3Aj5VJshYaV
	 xyQ+KrwjOV9S1M1e0M8i7Th55VLBI1P5fXTdaidsVoLhDb5hFCGpczMPF8fjEy8Jnt
	 B7ICVV1MJQexQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FB1C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166356785335.312.16736755338378505836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fad98b677ea8eb80938bb650e1a7d9d7c90c34f513bd28538713c12f14b9af1
Date: Mon, 19 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663567853
