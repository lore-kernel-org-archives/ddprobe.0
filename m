Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA8E2116
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 16:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72DBC433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 16:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688316248;
	bh=QEDSceMCp2qqhgJCDKuSZRTavprELqhyin4ibU3nxbM=;
	h=To:Subject:From:Date:From;
	b=SoxRyhyiKE7yJ1QmQrAHPzRRw48IXx40CTSHS8iEpjf85ijF7KNVvMC7ZDjqpoFlF
	 ab889QnZjXj+2d6MGPm1s1GpbGb79sV05ch5tk+3SZMNiOBEQqZcGeQ2sXLjK7M8yu
	 u+vnDjIzRQZfZdT3+MhXSJrj/xKsithMtAZFfsQfojAxZ837pJ+Lv2CSGVrMfRMlD2
	 TdZrqTXEOtSyTlogEzmqzz5CqylCL0T079eKyCTWBq1Vy5+tVexXZcxI8w3iYSd4W0
	 Y5I1EPRsTEhkLm57ChGgUO3nfofxq0ABeCDtgm4tNSxWOpNW8K09XXhhQugdPx5biz
	 0r72uYtbU4K0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09BEEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 16:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168831624876.24207.7027276511258813988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b483299c6ba05378064ab1c1074e10846a6a397c81b5b1c83df2fbd65f81088f
Date: Sun, 02 Jul 2023 16:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688316248
