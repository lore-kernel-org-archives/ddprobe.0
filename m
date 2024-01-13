Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4961FA1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Co61rkZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B4E2C433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705160896;
	bh=HJwRKpxEexqtxnWDgHB+PlBwnkh2W/aDmRNkvnmIfZQ=;
	h=To:Subject:From:Date:From;
	b=Co61rkZANicb1upta4olpTlyJ6/qUhit8dbL5F24ntFB7Q7gs1fUV63yZxn/gFhmC
	 Z3XY7wA5k+gBT8zzjMBHEPZTcR9Ulxe9aiw1mHu1HQD/pnM28xPcSTJzo+pIpe3MJZ
	 XMWWxOA/rFIqVacMB/5jZptc52KqNlUzySxzU9smGAaeAmkuWJN6LXys6tzi7YhqQ5
	 6t6wjp4lePUQEBcj9prU7V7nVptJ7zl+Ga2kZej4p/Cjsf0n6JrWHwFs59IOpMmrga
	 9gF1V9veWJtp3Alf4oij+Bwt3SaY3zoa5y7DEbJ2oGvgNjSi6jpHbdlYwli6mPUJv1
	 /ZkkqSC5dkAJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E584C4706C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170516089644.26880.5853380337282950000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db7a45b263b65982cfde40fe2c0c5cb8279037d0330f1f1356d9c703118cd16
Date: Sat, 13 Jan 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705160896
