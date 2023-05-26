Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D73C15496
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 10:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7703C433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 10:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685095505;
	bh=nZTgOvYB0/4XCgedqcrNDiId/61kMnSjjUNvQTQpwuk=;
	h=To:Subject:From:Date:From;
	b=fcK8R/M+pq6nAT6GrpuYK9UvcWDoFqCCwgK6wUDWRtSfz37agJFowOM+cHLSFltWi
	 Hc/y2kqXl03f5p0CWo844QSOrf+PhIGqocofEMuOLjYJrl9+9Wm2MwvXe2oTXM2ThB
	 XcGcTTEJg30A7xSUicaIFDPvYHr1Fj+TOKmNBci0g2fzyeA5kdG3U8Yr931w41OSWg
	 va30SIcBdcRIkcLeBDNcYqPo99739mIDzvmpXzGDyKPV7EQObu1ZvkvN7pVg3SNsCk
	 HwUDcj9cgHaAMR1/Vlevt21Ai4rUyta1QcRPMAHkPxGGCXHecq69EqgWrjAPdrEdbD
	 3xw/e0HG2g6LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC32C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 10:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168509550577.3935.6218277562265150396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789d85c37547160a77a61a69d5f5aab4bcee6af80130462b9e1eaf79abbfd663
Date: Fri, 26 May 2023 10:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685095505
