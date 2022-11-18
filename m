Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C3C7C
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74AD6C433D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668757854;
	bh=ypyWL+BoGMCZilLj/y9SzbkZbbwuo82w+yb0Iz1U99Y=;
	h=To:Subject:From:Date:From;
	b=SFhCukdWbYFF6ytMQ8R+LKXTb4p4a7miawUU+8Km8/L2/HbMaWZUkTfAPR3NB0ZIp
	 lSIbBCw3evujumcUOPDpp5/KNGGstlt0N/ZHD3NDO89BhFjRnuKvaAhDRPV/IgPFNL
	 NVAY9wHWDbnM2u+n1j95STpWSuHsK8y+NgJaQLU+0U09HL3SZupx78iKBYMbRPxUkY
	 McPnibLXZaQeDNyWl7WAgrWCC3kL+3iWCyaogKyf+gDP8yTQVDBUq6MizmbxlV1v7m
	 f66bWF9ohZMZI1L8aaRAOwH9rBYkPoWJHVSocTVdhkhXGwSY+QbV3Q8aEYBwuGJ5j6
	 Tttz5mskR0TnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A9B2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875785433.1886.14800179533110000896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4022acdc0414ffb0d7abc1719f113bc56ac54b85bfffbc2546e7caa86405ba23
Date: Fri, 18 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668757854
