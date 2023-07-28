Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55962C8CA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 10:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD73CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 10:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690540928;
	bh=8Jrlgp2d5QPX+5Nb3AZwr/C8XWOXT4oAF6uoI42FNsQ=;
	h=To:Subject:From:Date:From;
	b=usVLDHmcB4sPsQSQ7bxmmevFcfNi2DockzG6tdtI936Cplo9qOCjVkSwvPA2XABFi
	 vvXw0KybJVcgySDnHPIXyuDPl6xWj5Bl3Q+puk0OencGZ/GbYLtAJW8T6yDL/uopYQ
	 ZnKUkyADIVZCkEawJ/30k/M/c4Xb4QusMWpB2oHquKZU1ghLP/LDX+XPjzYBa712ne
	 KCSsHrDvhE6p7wj9HIy3k9jMAmVh6H1jgV8wICuaTwaIvWQLu+EXFq2wCVQzTUQ192
	 xhbsz/SZLtgvRSZL2xjYMkVFDsjyuuVaZClknLwV0Yc9yqlyD+f+EWUFFhlD010ZL9
	 myP/NhmgTzDQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC252C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 10:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169054092869.13095.2673640245198825649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4798a9602384ec5861e482b0ab8dae7f40bb4b9ddddfbe02a7b72a7b914669
Date: Fri, 28 Jul 2023 10:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690540928
