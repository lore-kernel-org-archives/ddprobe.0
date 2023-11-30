Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA11134CD5
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYOJunoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76C38C433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701367696;
	bh=eg+dNAAOSiTARoPXiOJUPUrg/ZPuDfogqQPzU3WFB6A=;
	h=To:Subject:From:Date:From;
	b=mYOJunoP1SNu2rRNnlyVL5qy6o9Zek3MR4jmoCJumjBRdzQmD7frd4v8a7pzS9t7k
	 EyTpPMO8zmqOA5nslH1+3Ur/9KCHZya1slBLg5Klcn3i8/AxRYY+p2aLTCWtYVaJCZ
	 e/AimcIJi3XM66mSE/845X2JqpALz2eysbYJoecZ4EVcf7o57xDZozcweSxZTR78Qy
	 e8LLM9iwAwCAoQQACerhHc6gdDRHloOhomOHtJII3jcIQTvOcRj3mhhkvdnGFlbHF/
	 4ZeSmk+hqyG9CI2DYD3IGT6DZTgLou1amTP9zZ+5otR1SXjaAos5WhcBT6BTdXCASA
	 KKjrXp1+CMZEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C542C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170136769637.28011.13784771217279239200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d27cc28d3aa20bf8544188516ccef65814a0ccdfa4e86d2af4504bce14df2ff
Date: Thu, 30 Nov 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701367696
