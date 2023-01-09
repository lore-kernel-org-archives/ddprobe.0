Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D0A15A4
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D73C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673226687;
	bh=PmbSoQMq2wlipOzUME6x4KCRplmojEXpVJhID4pCNdE=;
	h=To:Subject:From:Date:From;
	b=c4ZLO3rrGcu2i6xbz2EojGNb0GH+2Lla/F357RKqm5AQXRYwSo5ShRPIUcDCMNphh
	 7uLgUKwfVyzIYt6RHw4t1CbQzvfOqt4D1tesrUyNp0d4NszrQjL5KNl7iJEoi/4fNS
	 Om5vNoegYF8FbGw2jBdInUxBxMXeaARCqS3+KFgL8xEVoqjluNPHhYpTk8jOZrRwbz
	 g5u4OQ1AFFWaXJNvdjiNEStJ9zG6QFiNS4m3e1vZ8CDUA4Vmqbu6eqOxjlQ90i/mkp
	 /hNwZVC4x3NLaob0k+JggkYtxn9FaNL8cmtEcKLe5Ec048hGwG81P+u9GvOX5KVA2W
	 zKy1Xvgh+TwaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FAAC54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167322668739.1063.698701523179789100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364ae39b974ed32c236fab9c6898300877382fee0d3ac12f24131c02e6240fa6
Date: Mon, 09 Jan 2023 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673226687
