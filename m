Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC87E1854
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83BDCC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670805687;
	bh=qJWX2GE6WB2sU1w44JRle3Mxz2PQg48h2Qv6QJge/Mw=;
	h=To:Subject:From:Date:From;
	b=quu0jIq1Pm0rNHxiteombqY96TiijbPIzDh7C/bRPAZskz37xcDG+xluWwpuUPwpd
	 zIRzo5pJP8jaNDJNMz3woDdvOuYjFEGGKN8kRxEDw5xBpIb2o1QUeHzPaliyYCB0bP
	 70e6psWzJUN1C7z8z370Hfgqj35A9AMTs1MRfY0tWCDTT+STmFfaxdLklYuh7AzoBV
	 BsZrhTtcN+0ABHpuFT52Gw5q8fBP6TziJn/MFgtZbv+8y3vR20pfF0idfk8Fy78QD1
	 s9CI1dl9YshXtNlI4I/56bjqZ317/LuK9SBGFufcGfl9kMr5EaKwossLvso90WQqwV
	 0ry+kA37Tcmuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67AA8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080568740.12718.4911853039505794075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f04a8728d0e5810695a8c7180b99c240397db00a5332789562372893a12053f
Date: Mon, 12 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670805687
