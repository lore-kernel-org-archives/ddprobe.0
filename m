Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F307D7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F16FC433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662184853;
	bh=WCt79XSajQp3T9lAo/dK0ZjgR/NFjStbEUTmA/FytjE=;
	h=To:Subject:From:Date:From;
	b=kq5hbnGSmqGUgmiIMn0scvLAHF3odMi8et5hfb3qKdAfzka7CNJY6nKbInJxcbGB7
	 J7S1MprS0ExeOpEr3m239+LSm3c0Ohwn0vEGEFvb/ObmIBHMdfAUsgCwPD1odd1ADn
	 Nk0DsOD2eRBxQbLnwqoMHl5Xfwan+pXEU3IlXAFJJd+N0CiqNmmPOVteZaQn2yHPmy
	 8qpZKx3KLR3IWLk+oBjcLHFqA5/XCd6rOAcoTW17rcwQycFs2lahMkBCefY0zmzsgF
	 G/fdbxC1Qkc8KPLz4DnI0o+EuVA3f/PKwxncYpAVmg8ZvcJGayetuuSlLwi4QQj+iO
	 Hf+u6eL8dVUxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570BEC38145
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166218485334.18402.5561599915287165163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b482246c6acb654350833336cea5d3dc8333c5814df659205117e93266e9a8e2
Date: Sat, 03 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662184853
