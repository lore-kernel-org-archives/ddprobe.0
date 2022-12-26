Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6727B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6E0C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672065687;
	bh=VKI68csMbzbKbwfXxx5PYFGxUKvgsNIVSHgAT9BFsAU=;
	h=To:Subject:From:Date:From;
	b=KrvsB77R96qo1dVgBIPQy1tGgVI7iki+JaQ8ZFGEwmQ+Ive32dwEXbPuHUfxuaksl
	 lQ5rBeC9csaU1p4W37fwzbWNnY/hPGV4qJc+y4hKIEp3j6sYWEN96EL3RfAtsnehMr
	 nbV+pSmf/bBaCMSskoa8BPYVoEeS743IjZgoyk48+aEGYHKWDkWWJLRDsQEeAsAiTh
	 bxSYYpwMP+7uHSIcJ9e+U8x8trr3tIAgkn2EvUEFF+ANZpcEUwK2jXek5KvcNpRyaF
	 0KHAQL07eH4Cv0QgX8qg4XNvEPCir/5PNRMRghDGzq9NBQArLhhres+kuhe+e8IsTc
	 r8jW0b+0FIIdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62CE0C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206568739.26922.14682689277718313432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c4e630ad76b9c57c7c143cdfcadb39e398ebe20e52d784aaa581cb0cff1b760
Date: Mon, 26 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672065687
