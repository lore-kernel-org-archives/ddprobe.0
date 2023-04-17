Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3210E4C7C
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 11:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29D0C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 11:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681729685;
	bh=yaULav7jJ4rUXHMJ2FP8qRlDS1r/8eFlnpG0BiyXyro=;
	h=To:Subject:From:Date:From;
	b=Y2H706JS/X96VCmWbBHeZE8CtrOrCLh670o8usI2/9e0mp+zbEDsaTIUBMlIW+gfP
	 y7IGjr9odjEub9g/zh4uV4iKimmHJenyhgNM8QzQlmo2c0c9PEfl2avzPCmlUc5wah
	 LTbhKJ/8m0cNSGCn27++hp7yqr64U1N/+WWaR+st3WPlNP+gmu/TzEPrQgd/KJBUNF
	 I5iUayK+0GJM4VNUyYCyDK+hWbAkNAyWFMqzYGMTKR6Cof2s8uWzlVUQXy4UaHBoma
	 pnHZ9aYmXt27u+besWxOCDNgNfh+npZmXN06lX2T4k1Sy7lzOqCPGUbhaKUlVb2mv9
	 N9EP/3v5TMuHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B34C77B72
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 11:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168172968573.20070.5932837703421139113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d583af23731914827091e3e97dd4ccbf1b87cbe042fdd894d92e2180dcaf3a7
Date: Mon, 17 Apr 2023 11:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681729685
