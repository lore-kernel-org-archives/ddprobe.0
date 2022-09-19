Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25AFA31
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83321C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663629653;
	bh=r+8kopATdfTW+onTqvGfxiLl0mNDXaXDiPoHdZ98bcQ=;
	h=To:Subject:From:Date:From;
	b=lRhv7AKaAnhNxGj0Zoevqb94pilD2VfsYlNSdDoO977aKbqpW6YSb8fZoTWPWfwv2
	 nSoHyu7VPje3+h4cpfahwZOJ9xF+FcD04sANpwS8mBrREjyGrLBPLRPlYx0WyhbCin
	 9AWfS3+KGYoVg2o4WI8iymrFoGTqc/V0WgK0xCpqSZTd3+o3YFBIuisEdIh2QbTbyZ
	 oh2pKHoXdTOwDsvmkwqeXIT9PawwXAZaOS6QgMttoN11CO218bBfv2Z4/5rvXcPh+9
	 FuBJHzEaTpB0rQeFfY6ZEcC1N/R67nfbmHkcX98nXrs2MxFo0aPbw0ahPJiPkvcqJC
	 E98EGZFy+Za1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5860CC6FA82
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166362965334.14990.244521017030912561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78d7e7ee40a686a646a9e8169bd112e33294eac065a0b4c5853bb24891bde64
Date: Mon, 19 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663629653
