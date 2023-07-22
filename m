Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B212DF44
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 12:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7999C433C9
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 12:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690029128;
	bh=JoU8cDnKc9ORA7l8rbcXuunMiTmg5K6xiNp3qPLhkMw=;
	h=To:Subject:From:Date:From;
	b=P1CKdIoXDMV8TtsWzZu99PrXIbB92NlIfpx8iy085VAPQVtRuBTIA1SbQpp4F9TOA
	 ifkp8qQvr0xdLOOrpcNEnDaIxjqRsPhBjoblHr05cFNH50fFse7/EyolF072/VTGFG
	 j299Xt1nkXfuKIOVUo4efP7CeTqEkPhWfthV43/hcOA0pHNLBYFdXhJeoNkBhN7LIy
	 yIWsP6Wlwk2zeZsvjFgSzf7HsuSIEq67FySJ2Us8gc41qtQrgsyYwSpzcdjkkeApVP
	 7s8ldrSTRiESCHSka1Us36UpBjvZ63trubL7omwOeV0dvdJ9gwm7LXEuwGXBkl2iaL
	 gAwcCf4/cTcdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C68EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 12:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169002912869.24072.2069178458330054055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d9b0b23607f77cee3c5b868252273b20cd21bd460c6ee9ae2e3ce4b5d4dc52
Date: Sat, 22 Jul 2023 12:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690029128
