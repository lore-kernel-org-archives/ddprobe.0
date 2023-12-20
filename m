Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E40638FA2
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYXMKt53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F57C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703080096;
	bh=OkVymR4wqHNRe83hM1kodH4rpnn/zp6LPzuJHCCupmI=;
	h=To:Subject:From:Date:From;
	b=nYXMKt5333vjvthSmjX+XRKVlcMJdQQx0mPG87cE00XmHiBZzzFTmqyBgBuxeThAy
	 8ydCcO6RAnm3llttOAFGo7tqg03kM4tT47/WUn8ILmg5fHMPieO4f2ga+hYTVm0+aE
	 GxGNyJXHy2VLUS17RrblwOQQUnG+dwSYXaMjMDxBu/ZsYQAmTKDMrPojfadd21qlqr
	 jQOZkkC8qAuvPw9AO/34YS+OuaA8WI+VEbmm8/ZEP4e+gKyR7Z/zqhCLccf7KP+47U
	 GrypKEQTHw1/+f6VQrLRche0gNe9XXEWGyzK65DC12KpBion6fuYwzMJNhQTg+4MBq
	 Y0dJMomlmzN9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E613C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170308009637.25771.14872391658955846388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb95efe4c0d0f2cc20e2c695d5a7bec2b976691e0c44427e7b1417f2599b1701
Date: Wed, 20 Dec 2023 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703080096
