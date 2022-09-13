Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7F863C10
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68363C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663085453;
	bh=u+Yx8Z43pblPfM/4w4h7h9NmhK9NadkYkfPvj6h9lDQ=;
	h=To:Subject:From:Date:From;
	b=C1TTvXBaFmSF7ao2UPaP74Xxq6p6UFSLTDXPtGGBqUaUz0nCyW2YMWRCEXlM53eKG
	 dIEMZtj9HSjaz1xIZY874tams9LGwo7pETWgjFnskZy9RxIaE+dcwNqikm7ZqOT83W
	 xaQPbrmyGUC2CNu3CVIy3sdXMEwxD2bOvSJfaWZ8VhIqezdjfQ1lPc1I1mgQ6tcWPZ
	 MvubsRAdSKZEyXPZ3hXhuX/BP5NXC/qvK2dk4O0XRR9gd2SOCOs6y1E2UWP1QTzQwV
	 G/1pMxGmpGqaIDcRSCfU7rx4GHgviMaSdthwzUhIe6p+NsCcFC2+yVDfitUoUXUnMr
	 cMTZ1DWr/i9Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5211AC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166308545332.19462.5656311580442543242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d07117a09c76aa5c05cf46a2a640fe1702eda8eb9e604bf1540fcfcd1311bc1
Date: Tue, 13 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663085453
