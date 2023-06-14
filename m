Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3C3363
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 03:17:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C749AC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 03:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686712628;
	bh=ndEqr8qetYcQGPoMsi/pGzl/3f3FpG31EubmsfzoYvM=;
	h=To:Subject:From:Date:From;
	b=gQmxT6hTxFTjuusZNMBdwobHgPBsE1QuMNHDSBgyUBEf7M3HC8hnwIjehM9W0R5vm
	 jjMLTUm/hfxJH6IujkRK9kXUNX5fSiZ+/8ia73zlqt7B0UjbkZwKhR3s13rOUkNM2R
	 s/qfDlx0WBfub6ZKAP7P50amNfkKTp/UM3F8y7hWA4IGRIRk7J9EVuGlREh+7KHHjf
	 +q589ao1Dpt8fqnc0U/lRU+agJLZikyvg5MBJvqJ4KPs00aLmTQg3mDAGpWZK0X8Gy
	 bMh2YYeQHJp5vAe289q7EgD7qGINcNC5B++JW5lotsIiK+QCZbWpeueHf8mEhrQmbz
	 HuCypg24GPzvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA90DEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 03:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168671262868.22393.16184289398797851590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67037ba16d8b145a9fff7e3d0b00d98253ee71208a7b1a518f71981b0add2657
Date: Wed, 14 Jun 2023 03:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686712628
