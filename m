Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B01101D0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlPrDGvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB27C433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705318696;
	bh=ZhVj8zl3fHMB9dyIPFthOapJdqcFrIBoWPoP7wCxM6o=;
	h=To:Subject:From:Date:From;
	b=PlPrDGvEi9gjsXOAV41W6ChW+x1cBB07HdeTt34QRhK0w7KiiRuVGJ6gVcHVWTbVs
	 XL84VghD9nhfGC48yRwxj29pIUV/8vaSioHvxHQe+VWL7XCVlAWhLPzpWSNiJypvLs
	 tKjVFRMexpdQBdNr3EJ5HYfw3VSqE/587Gh1g/UhVHQaFX+hUcWM5FhRpPrGqTdGzb
	 6MZK0J3yteJztV/KM4GsEl4GOFD4znYRA5H8dPeuYCWCT011vUX3yzvL69AUX6+oMM
	 5frEvApuReP+dN8V9+0k09knU1WelkoJhYtdpKLTcIR6hT8Rf5Bk2HTYe6oQFzjOkU
	 wxXGR+gblA5Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61C3DC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170531869639.23467.18295369900592987441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1979512cd11079a77ca5759739c5750d7dcea279646d095bd6955ae578ad6f9
Date: Mon, 15 Jan 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705318696
