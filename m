Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC1233207
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 956B9C433F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671223287;
	bh=Y5PD7o7pF/wHwPH/jK6d0U7iLN+RkbBx2hvt4KoHRiU=;
	h=To:Subject:From:Date:From;
	b=a9xmbUet8JpK7GudIzw2RRg9If/3az6FxIe9TaYxvzuV0iKQOOgek63Zp6sSDH8bk
	 8+flzdHN3lm+yYFPjUJUW4c05IKg8Flp64GIRPaTYrwEPp32pHv8KTvX49PU8IxFvK
	 YmXSpJ0bAEjQGv+dvODS3oZw765K7UPWedjL3ZMJ3JDxGfwlWzrcvGexDhaZctgi9w
	 +TUEOPsxZ/M29UCgkbSi9JS0G6/kwCIoJLAv273gJYR7WkWBRR0k91B+nVlxDiS1mU
	 c5oBcl3VWq8h8dL1yyN7AQT5A/aFGCRMYth4KUHogtmfl6odugUGaxY27imm16mIMV
	 WjqLx/h5Ggxuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C10C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122328745.14734.5814985660496998993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d63c2b5593a0e567de746839a921298a538a7f48e2058a6cb46cbf4b618124
Date: Fri, 16 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671223287
