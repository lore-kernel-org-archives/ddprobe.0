Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57295CBC
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1BEC433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663365053;
	bh=4rp3Jx/fA6DSSNHpFOswWUz2Wnnfvwhl1IzcWg1tW/s=;
	h=To:Subject:From:Date:From;
	b=OISVUB8LO3zYR+GY1rKS33JGNZuqViy21eRMyPuQFbjCUDTQ0k/bt+WPAMy/aaC3/
	 FgvJ8SyVXKtvyeb0R8U1lTRPO6GSsuUAMMogVKZ4Xf+VPdOQXsTJRe/hCM9MU8w+mE
	 GWzm1e94Fv1CahblotfqwcsFoTNRKKIA0qEchyCLKHA83bK9IpsCByV16mSnAqwROu
	 c/Q6Y83CuxyI7ofanUAqnAvmVVgA07nObXSIhTLJ//lQ88aBGlRCGVx96jell0eGSe
	 zRHTD4Qs5Xrk/al2VgZFK66yVf6pvlkct50vnqjD2wT1W7ffZW4XJ00eu+3zLfeqlY
	 xQi0dbwnHc7EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F97ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336505337.1879.15653224644071377298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecfc16dec37d1cc09a83bc29295ce5c708a6627603b432750eea0c2df77627e8
Date: Fri, 16 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663365053
