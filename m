Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3DC210940
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6uxxNHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AD7C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701757696;
	bh=9MeS2GrLzJ5dDy8FXvzvzqpu3GrgFURimAPP0e7mhx0=;
	h=To:Subject:From:Date:From;
	b=W6uxxNHYPSlfb6tRg7+Tf5EUeiu0B3Jcqop5N0AcKuvsXl2Oy/g0MQ5MULVjDtx+E
	 M5OBfoKYrdlaYr3zr4cTve/tRq0XPxWvK5xdNXcaeu13t/ti5x5i57Xzh+xoT+4ebO
	 F4F2ZLAROE7OSy/HGlO8CAmYMS7pC10Bqj3gBiJuos+t1JKBQMl/RsAR3my7VFvVpW
	 ++Clxz9AZSC62+052C7Ro09vkTkDf738jXfWW2ZgVSbiMChKDvADj8PlyB26q+siCq
	 /Ne9tfQwrA+w+fSXiTO/V7p5vHYTo4oaayB0gCL8SYFjURMFf0X/pkHwgwEB0qTNi4
	 D8E3JE5DCvb0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD4CC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170175769637.4978.17355820342968135337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6562d1c87978bff401a3c3645b265251694e024d53101c05fdc0b9c75f2d94b2
Date: Tue, 05 Dec 2023 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701757696
