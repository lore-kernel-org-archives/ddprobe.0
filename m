Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1005E3C32
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6lUFFiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E0BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700982496;
	bh=qiBUeOwFxZzdJLl46/I6eyTSIu+q5ugf6Kjbigbcpjc=;
	h=To:Subject:From:Date:From;
	b=u6lUFFiE0AM1SgRcYbsn9+1A1mVxevMoIYJaSzkrAYw1TGymAnocLfkecGCaZOfIq
	 xjuL0ldWgwYJR3xJdjHzwXTSNnIaMxAIZ1hQ/L+V8mbcrW17ew+mZIj9IRivdPoZaJ
	 IbExlUcTsa73AlpoLWzqnhOZ9Sd2kwSgiMi2jwE5GxBrQjOoZ1eM7PpP2cBdYp+EfD
	 qbhemoOK3iZo17HeH40NRzsmnyJNorHRs8h2oOhSvaZblXbJZ9o83VqOjp1siMWebG
	 WTyMUCs1sG32c0S0fbtg9ppc9hW8j6dkru188ygImKQZuksF5t7t+Us+25g79RmYdX
	 KzoqqGsd+k+CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65121C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170098249639.32674.17150232853329509777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd9452f086fb2675f71d43664c450143f39c28fe20738701f85e230cabee692
Date: Sun, 26 Nov 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700982496
