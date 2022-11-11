Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B677E620
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A7CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668129654;
	bh=IIPC/KXEI3f1gshylYZ6TusL3fg7wvw/yA7fNGY6szc=;
	h=To:Subject:From:Date:From;
	b=EA4gifgWp4mlCGWkXUBbqoHJLD1Qaq0BM5j8sQsPrZc2osf2ERGohnTvvc41uJPC0
	 uiRvA5yPmKcFXMurX/GQWTzlC9u/KlPbKRbcE8TUcOCzsAJPLtGrq9/aqU58smluwa
	 y452SDRhepPt8xbVSnoEuNANf+EtqJo+5xDmvVX//8rroUWrE86Lz6KOzIcaCbtdG1
	 0Tmmju1rRoBtxlKZzSqX4bLPMOAJFgGpcHorQfTwJKNl4LaMgqDP1ehRHs/qL+2SN4
	 plXg4p4BF9d0korkuogLFU3NBmnQ/E9Awk8ZbucAMg5jfkcHe3Wk9bveNXXKREtgbW
	 g32+4tZmtSD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552E4C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166812965434.32119.11246177114421514331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e888f508a64107f2128a1231ceffec5bb8497620f41acc20741caa94a0fc4a
Date: Fri, 11 Nov 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668129654
