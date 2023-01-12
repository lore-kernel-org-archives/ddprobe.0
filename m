Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0742378
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F012C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673491887;
	bh=LMrIX54ncFC7QQX0VZEP8jHHQ+z1Ud+E3nEJgEVcMug=;
	h=To:Subject:From:Date:From;
	b=BDDrGFwA51hbKXLp3VGNiGuqNDjeBGDvOa0EHL70cOMIOBMSfu0jl2Bm+JSLnV6bp
	 ow0tuHSorjzxF9HYyUx0xJ2pfb742CO2FLwKAx67B7CVXnftJxEZCHo2TIHPSuJpZw
	 ph0LfdGpptQ0N62V0k33Qgjod4u0XhuS7zg4Jd+aMhc7C/yDgJ9e5PTNzm/cYZ9u6S
	 JJWalZ5qD9fN28+xTo+ar3bixS2CbzAqo5h4oiG7FNaEtoprZfQ/IK0aw4Ve7IiDe8
	 KG0i0BxcPMglToBtMoje5hSuFDdql1piS3TbLMWKSvZnGo8Fa8ZgwJvonKItWQJcDX
	 FJzHjEiS2ooKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62516C46467
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349188739.9710.16087733899545538584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a1df123ad451759aa2e86b79f6373be6a5bbc9404a932eacd2a21479a8c56f
Date: Thu, 12 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673491887
