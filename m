Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7527F188
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 03:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6776C433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 03:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687403588;
	bh=RuPslWn/rmMwHC7KrO9e08O8fBYMENmeK2dtqkJikzA=;
	h=To:Subject:From:Date:From;
	b=k55PHlttiZzItURdQdl3OJ6Jk8x2NJIxnMe0X6uAGPnFukJVF/EQ4BwMwEmsQw+BG
	 Efjg0ZDyVYPSCHl6F1zBTG3V+v/d4dpDu/ldCjxB4g0QNrQxIMYiAiHb06mGRwcKbw
	 H2PZf57zZoG9xs6zj+sgr3i5bC0yHBvBg65owzpRwg4qVttgj2KqTnaObFjKid9PwQ
	 /Lg35VRItZ+xkITC3dCqcrzttXIMiNli7CvSQ1OTYXSuhJQqylIMVENcNEMKIFCPfO
	 TcSj+pT+G4cZSCgAgcAm8D2VpatX0Fo7gUybviZUQT+fY7OHpKxnnku3h6HtOUpNQs
	 IXKROpD3Uxs4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D5DEB64D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 03:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168740358874.27875.18393369571300004806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b042fd17b364a161a373e0b412f61ad57fccc49b9fbaa4669470f7b3ebe7a6
Date: Thu, 22 Jun 2023 03:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687403588
