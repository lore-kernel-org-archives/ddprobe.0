Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3186A3217
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 17:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CBFC433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 17:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681147925;
	bh=PxN4Y+ucqL39Zf5/TdKYOMSsAha1rgdpgFe45uxWjh8=;
	h=To:Subject:From:Date:From;
	b=fyIHP1+k5m1zJ4fmWFLCdoc69zMTEmi1pO/BY7v6PjZYydySpV4Ji6iGtmYd/Zv+8
	 1aBw/m7tuGsKRCEOPmEobzWmalzsnIKeh2JAYO0PK/hwLlh5eROtS2/d8+/PnY3sQG
	 0Xhe8P9qmtU5NHngjkD34AgKeEyeUVpIA8yZooRlTSmi8L11TgsthLcwQIV22iPF93
	 xa1VcjsYEWtTkipUdA8dheP6quDJuk7SQSvjQhbQACdFb5b/ELgr0kOn5Dqwqr5d3j
	 WEfu1PjaaeAnoCaSLv1NFJkcDTR1OwQyUdJJ2ZalFlpqfG/QpjNmHom4k93NqqBXSs
	 4PzVyj4/Pti3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA912C76196
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 17:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168114792575.5078.13191140376915036766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312d7d764af3f232d959a4cf20506d5d0f69e5d1b4d996c9156478e6830ddf0d
Date: Mon, 10 Apr 2023 17:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681147925
