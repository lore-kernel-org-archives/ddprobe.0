Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7373FE3
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 04:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62B9C433C8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 04:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689825728;
	bh=YZ4Ye5R2SU6cK/85hW39lB08e2R5KJbArkL+xLiCi5o=;
	h=To:Subject:From:Date:From;
	b=c4iOQKsyygqRyU1Umgjn3ByE3yofHd5TCNaZhWYbBgPc72dTup8G6ns1GOHVMBaE7
	 1h2t7AXuJcqD076NTrr0WEffH1D4gVzdp15T/xH5D6pHG/Q/TMD7OjkNsA/X2XErg4
	 RPhZG2SSWjg4i2RNt447TMtvUSsvgpsDYL52vaSBXH3nuhyRJ1/TCY2Ks1Rr4uDjHg
	 0QHEMXPJ+NhXU13yoyNfCDpyTBYYFDJwHCWUbdfae1Fvnu+x/roXiOmEcJHb6eWjzm
	 aJUgfCzG7hHj9xhqhjh3QvI0v6FEaSAFwbHn07ZGWHkdbEo+uRU9BoDYDcetbe1IT3
	 EAcq+/CdnaNKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5BDAEB64DC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 04:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168982572873.25312.14281682447346803533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0248798cab483496f07e58ffbdef8a4b864cc284e530df2ddf2d12f5b5144434
Date: Thu, 20 Jul 2023 04:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689825728
