Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A9C53E07
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgVibZod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73757C433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701375496;
	bh=bddLWADAkFghfaPliLBiO2K9LvI6kzpBscgzrOr7Cj8=;
	h=To:Subject:From:Date:From;
	b=HgVibZodHDG6gNNA+aRul2lT7/9Vu/6wOlH/VyEyj/7PyxTpzkJjVok3kFy9IweJA
	 Q9VoHyeldhHijtU2tUKGQKDWPLq+z9EJh4uSXEo8Ppqz6ZXxH7u0f7FXsWcfmUR5nL
	 0yhFh/5qXuxOeDFtg2WZbRBYJoSkk/1T4d9Uqb9c0WNyT30Qs+IkHBSG471iDweDjO
	 +1ch7VeKtmzssVx9LoeYhHo1ouX5nUkjHMPANBJs1bTkfV9QxSnRyW6Q5FVzSjIKo6
	 EJe4iItuupUEYuVZDr33mU+2abiZ99Gwl2W518wmacJcMVR0OaZd2dVpEBbSXe76w5
	 3kebPlSHRVGCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB54C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170137549638.1309.18243780939093200101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc4accacc67badd53a87247c477e92b47b6334b1fea80059f3305b946101e4b
Date: Thu, 30 Nov 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701375496
