Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAF020EC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6F6C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672646487;
	bh=hFShUim8iXBF4TDtcCIWSLUNSQYQhOdiWoE+1NLH4Vk=;
	h=To:Subject:From:Date:From;
	b=HgXB4cnQO0FL2NGIN68xIpqxqAwYCtIjsEktUm8UCjwxaEO9342peWYACbVsEwCvS
	 I+ZABT3YC7Y1yLrZCcChEknC7zzYAhWIwdxKiiX9z2nBKyyDyzXuZeAGGP9fDJNDIJ
	 NmJJkyWisD/kueLSBg0OqjrAiGIHENLdctcf472DSvKfWinXDhqZ5PPEOKsdKPaBOI
	 Qf4wkyJOPDdYs7WOk2mWhp+Kdvhi79tbd4Y5G4OGoNZ3qkQjWfdn3f3AQIj86tpWrP
	 /2deuXTvrkp9cT4dth75vmSdoZvSKQG5WsfkK6mRyAzIRbVF8auHchC79UXG/HpdmA
	 7wsPfihYo6dJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63671C4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264648739.26547.1809905490775861141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d8ecef3dafdf013d783702f22e8ab654178f15ad03dd6e26196c9befb1b51c
Date: Mon, 02 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672646487
