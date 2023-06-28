Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D15D33D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 05:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BDBC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687930988;
	bh=2Z2xzJrodjTXE8WEXsK2AQk/pg/VsGsGsJcj+vB6eNY=;
	h=To:Subject:From:Date:From;
	b=WdEj9dqQ+pfzs92a+QJERH0kLd8iTC9cKuBBahm7FH9tloQ4wx9s8KMQya9qgz7p5
	 SaSXTR8EMByN6pTIsRRN0P5VBMIFEqSL6kYzhysqqwU6cIhJQb16sV8oDLjLRC4Ghz
	 jxqsH2DCV8ikr0bRNUWDSHabJPT1Qqo8PBvvq3ClFUBsaDuQD4CDg8slIyVl7J91e4
	 YEceSWKhLoC0+6y0CZf+FA+xtajCWSpo7tLxk1zlwbr1OcU878ey49KtwdNj2P+bFr
	 si3ZcOy/kGeOBSwK44fSIHMRCl6GPTf+40pKBSykq8HrXbxnoPjCkcaA5XbtjQFwuN
	 wK2MkBisloP/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8CDEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793098870.24254.7354944765750084532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896e4b0eaf150266cab96438c03309d905f70ab82335735419a26de8ba1f49df
Date: Wed, 28 Jun 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687930988
