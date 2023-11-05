Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34655ECC
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nrzj3xhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C653C433C7
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699153096;
	bh=w8Vq58r+70NXeAQQfMdhFWE0MGndibq1D16rgmv14LM=;
	h=To:Subject:From:Date:From;
	b=Nrzj3xhh1deav4ojxxKhRou8laR5+Qa6JTw1G2MPbYJw2opKqBFzjLhsPU1jxN9jh
	 L+muCX/BiPFo+w/WfjC6hsczqN9bNHPuwhyp0h9eFXGf654tByBZ+8aZ2qFTnbVxB8
	 4CnfbR7Q7aJaX9esmkKuDFzb8yu8kHC1hbIKjh02Myd7zbgmb4S4R0twxNYChi8b1P
	 FwDwsbTJYfKrWffhkbc/VhWZ184ttvEMV/P2vBF4A+n08MT7pYfSxdaQssDFdoJTR7
	 ipv211Cephrx3vqbMCNBf5CDESdXuhUWcsbaYc0WRvMF7j8QZLbvVKvME3wDDCYwNn
	 4FE6qvbTJt2yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8C9C4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169915309640.24282.6737484578467591274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da52feec62bcd85e59f25aeb34a873bcf040eb6701fbd82589763583d5ee288
Date: Sun, 05 Nov 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699153096
