Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B280133DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF47C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666456253;
	bh=5gj1XPmfPhxXhwiS2THErX/M2Z4wpjwbk0vCzEABSfU=;
	h=To:Subject:From:Date:From;
	b=Q67DwcySOKwOH67nt2USHWWkWdJZrkUVsYaftT4TSC3/0KrTRmRLFGurC8E7fQafP
	 i3szOquKyxRxSs5nvgDOFEiqp/NtE4VFZnXDJE7+i5IC3LkKOF4OjGZ0LOnUlKpFkH
	 4mfRJsXZnw/kSJA3Ydb/Ywb5Ww7ueW7wKxNfTcApvhOB1wdJifWhBInnVpCeJH7JsJ
	 cCMXw7XnNALs+rBoMdZeKiY0qZHPtgco/LJbescyfb3PuRnXtd2iiY2eEHuBErSeBe
	 3K/AE0e94qw74FY2tiTeIkYZlz+33mnroRO7GmIQ/XteyW+tRaoi+i2wYuDYEqorCd
	 stlVY2ENoGj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52422C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166645625332.24407.13973621890124707030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8cefa111efbce9f5582fb7fe4f184b7f7a04c55335c7c470d790e0dd4c99d5
Date: Sat, 22 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666456253
