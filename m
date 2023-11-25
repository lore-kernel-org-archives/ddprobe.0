Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0511E630
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htWECCiO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3A1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700873296;
	bh=Q5Awv/eHJ+gZchanl9lJLvuiIGYc8RNxBUlm5kwciBk=;
	h=To:Subject:From:Date:From;
	b=htWECCiOHdNOK9fCOxkwcM7CFJh1Wh2rrZbWXfeoYRw/lI0rdtwDk17pUDjpWKuwT
	 0Sg6tt2Rd+Pzy5aqeTjS1U3tn0ydC/LpHiGwTK4/13jY9AJI08L5hWHaMCURonZn91
	 xicOnkBh1icgYvlZPafjYtgTB1XL5AFCtBNu/1HAnXLZS9kkMMCyP2PZoJfr4RBUlv
	 m40Gfm02WKvQBqhXnirH5Bh/oGIrQchDUcAeK6MaEuixg1gNuNe9Z3sW+zvUpLWRsI
	 FeLke2YGbmTl5IT1yJAanlXnah11W9E1oFWre6w0ibQVMxemJptiAYyNI4o+x/OPwD
	 v7PH919qL6Ibg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBD7C61D97
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170087329638.26340.5037491742005764501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e16cf6e4b19cd9921c0ec5ef1b56144ff183d6095eac4eeb81dbad9bdbbfa6
Date: Sat, 25 Nov 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700873296
