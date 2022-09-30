Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE09D5C85
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68747C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664578253;
	bh=1Bdxzt47zI0djLASKiDlKqKoROa17+WqEk8Cl10jpUQ=;
	h=To:Subject:From:Date:From;
	b=ekibsO0fU4cgb6+YDMAAVf1NvPkS+P9Pk8P+BEH4zRDAQW/lKoGjv2+NDP+T9aLGj
	 Kxjzf62vYL/Wb8z+DbqxIVFR/aYzgnZayk0AkLgcY/ym4mkxTrb97PPalyRNsRI6L5
	 +/XUmHrP5Lyzy44cSAHSX2vTplitXlhvXO1T2H1m3Qq2LaKgHkWqC36uO74VyqrV+w
	 +7oeBgH0kqci/Ayb4Bs8TjjDLEimB40Jc/O/Vb5VO66AUW2LzALFMtK4xurkPjPAui
	 wi30oHYfSw+7/G/ym2ZAOc1qWUkmWzWb26Y8gyzgysfHAhxUzEv1KhgxSMIA63UJFk
	 EY8M/lxk5kFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D48C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166457825332.13711.16590101229602535976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03b1c132188c90dd023066303b0448af182e5921d2e6d240725c9d28d7d51a0
Date: Fri, 30 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664578253
