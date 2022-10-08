Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E961810E0
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E49C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665207053;
	bh=/Fg1Uyh0i8DudijRzop51/VTeAsDeB3SK+f+MGVeSiI=;
	h=To:Subject:From:Date:From;
	b=lwYHGDp7w760604VV0n0FKspbEkm2HLCAvVmszjGGmtsu980gERVg57ovaCaERfz2
	 ghkeMHcO89BjkTIujzxTDrnPN3FSRbF+rc3DfnjuVrYiBaKJPYKrnk4dKFAWFVVuG5
	 cOHtAa7ezctydRZYVXEa+w9hx4HZV1Ke6vkYxvS1u3WOExYPS4Ck9Aw5498jpj/i1A
	 i80ZthA2WK/HeiCoCc49gS9Pgq7yRUjDjwtdRnlrGw9oWDSIuL954CEGbx4fQ/htsf
	 m2Glvukul13DhKpxFnc0YFOm0fL2FLKJfZ1G31P5ep6hlVyCQjThGAizPvcMixklNa
	 jFIM+DyM11rCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54403C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166520705332.10048.10947640588409281390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27d30aff4f161ab50e0284da867f3a737bc057c31030256069ac646589d13bc
Date: Sat, 08 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665207053
