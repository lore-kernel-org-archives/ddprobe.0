Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4313B7F8
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 05:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13F6C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 05:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684561745;
	bh=agR9bDZo2oUUVAA3KISN/AXYjoietIaJTtFShY15beg=;
	h=To:Subject:From:Date:From;
	b=K0aba1vvcHfN3TvE1CaS0zla2SL60jaBh/ly42zVVe/P7D9lvWPNdo/NR8FqINDKc
	 iMldk6ek4aEfjxNShLkQbMPXOOVkEiDrXC9BH3bfAdZGIIbHT8QqMVldB/fzIo9Lz2
	 46mTtyFqKZ2MTK6zR1Vfn2E+FrxIQd8A2kQDnBuZC1KjynGAEcnh5ejrLkH4Gj2CbG
	 ZjqQjaBB9yLL+QetJ1LePSc3CZhVgA7Ktj1eYO8i962pKYlqpCtDZiaQaRzNI2uqGF
	 VmZ2PGizfBe2ttesDegVisJcDNryqqU8YEP37F0IDiZqxJbk9Sbp9iCg/8qwKMcnWZ
	 6ip1Yn6Vc3pxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAD4C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 05:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168456174576.32530.11861106290350366801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951d080056a10853ba7f896a59951a7727b98e22bc43830c1b500899b135d3d8
Date: Sat, 20 May 2023 05:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684561745
