Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FD48BF0
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 13:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D52C433CA
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 13:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690810928;
	bh=DfOa2mBd+HyyVWaNrMqX7kDWydkP2XWI0hWZ44eYSvw=;
	h=To:Subject:From:Date:From;
	b=IFQVZrFoCnKTRu9iMGzDIB5Bf9AyaLt9mw/wdN2MxBaEtGuLDbbV6E1UHK6ExzGk3
	 JU0goXHSpaXlkqVnyqklgAFCgHdOabwqHFH0sbuqgntVjvs8OC5ZC9wLlTM6P47NXy
	 scRIr50/Fr9CqDwFGwl1XFCpSa2G6LQwfmN7PJha293aFzOdZo06B/f56i1pKrwiIb
	 FAk5KbLghU0fSqZFzTnSRKfmzBy0Iy+OnEAdTf85ndpHPNrZVcwkH0MLYKUOWIb8Nz
	 aEFa189JZWO2CVqHTaRDA5RUiXByMtI6KER8ShDbTbnZmHQoYluqN+ps4wMsKMukOB
	 CKUh1H0Ysn+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A885DC001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 13:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169081092868.8143.16625186102612412985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76ad73a7c411bd85b702ae1b93807177ffd112546bf7baea34843267c74b10e
Date: Mon, 31 Jul 2023 13:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690810928
