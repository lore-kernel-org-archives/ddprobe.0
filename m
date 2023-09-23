Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5307015E86
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 11:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5868C433C9
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 11:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695467708;
	bh=rbDQlIA+QQBt1ninMk6CTshvr6JS3qKLF870O+cON2A=;
	h=To:Subject:From:Date:From;
	b=YexLVnyXbe8zyvH3Cn9QL4nzmQKDv3SVkl3WDTX34TJAqosNjQkhvg28pPOtfOCVD
	 v1prLAy2BGyJoUcKWv5ATXgFL9crZXxafyjt9nLQChEkQvFN9JCdHK80OgYsgXQLNN
	 +Gv+Ss2MOqvki3cMmqQ/gS70oRjvEgxMJJ/NnxgF8m+bwE20ZQVV7y6wQrCeDVLIXr
	 46AduU2kAG+B4Bpv3mPfByC6Fqbtj5DdsGcd8db7qFouNW3jAl7HvRMgLV0mLUkCam
	 UO8hAZQg0sgF+IFYTsYYPTGy4BS52b4uo/2BBp/YdBpXRjfV2iWy6uWLVN+Uf5NRpW
	 M4jDTRSuXQVHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AD2CE7A8B
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 11:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169546770874.24292.10949726681815297826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa2d80c8cda3784e90a35ab6f86c27ca21d4b8178fcae08b9cb250d9261d432
Date: Sat, 23 Sep 2023 11:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695467708
