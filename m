Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA5735F12
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtbY7UfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8172AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699993696;
	bh=WkdxhClCPpM6kNb9SyRoq8tMDBQ9Aq/Fl2y/UM2VDYU=;
	h=To:Subject:From:Date:From;
	b=mtbY7UfGlGJ5ztEIdPoiMVqh5OJhswT2NZDxJNxiasEd1y4CdRSvycYTpGXndNmcH
	 1AswWgvMYZNqKrhNZ/iOzvZlMuUglPctN4OJYZ/xCVbcXdbBygcIBwk2FQgdxEP77N
	 +0P1j6sqsK6kJD7Xt1MKXrptI70al9VqEl9UXJC1g0yyjUqHCzI//tjnKaVyATIzcV
	 mjyfm11NYCoZfcuvwzRQk7LKpV9RliYY0U+N3rvXYCOK03xRSGwZ0hglAMxN0zdo+P
	 qqgEjbe2u3nbwHmRM4TixdoR/3fOyPlfzZ1cBLG/sQhloFoTKXS4WAXH04ST5buw0O
	 zG5Mpfc1wdPkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659DAC54E7C
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169999369640.20406.8208523454395477881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26a10c9c011f053de80f89bbaf31961945c801c4cc04f16376e643464f4ac46
Date: Tue, 14 Nov 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699993696
