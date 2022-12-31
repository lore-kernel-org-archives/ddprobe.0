Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE4B23A7
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82441C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672505487;
	bh=0iyfWxKIXSf3C06zo5ekq/m4CeV1gv/n3FSWC/T3ObE=;
	h=To:Subject:From:Date:From;
	b=kXE1d/z+QAHEpFxlDBP31ZS8QfK4mPhKNCXB3saa2XoztvHdIUksTk03wvvnQ12Yi
	 6qtzsamKsrkM8/bn6HHntD2ZmxVqXDxxOfFCi5X9V/wY9FntzU4eKHKT+nUroIWPEv
	 UxtdDO2JL/f7zyGSPkdFuz2wAraalBxB9UV1sYPL+p0p961WSkArInLEQv4smaOaeY
	 89O1UqRQL914nTZmMVa9h5ldEFVZfwd/YgZrC3OFcHpWctKuIRnAHqLZXebIKbhbYC
	 ZGkzu3BlXKvq8f0rkELlRgGp3QGB9n8W0kTMVzhFYxyD0SlWBl6ytcPJddMv5agXkh
	 bQLkHCw1i1QtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65451C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167250548740.11570.608779972186019571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80f1ab51c37878df37193a542f6cdf262815f2f5f61f7aadfe50f547de1a3ac
Date: Sat, 31 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672505487
