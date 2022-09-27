Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC8C46B4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E06AC433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664301653;
	bh=FbSd0dhat5cm6KK4ZEDoP+uX8fltabLhIhRiach6b2o=;
	h=To:Subject:From:Date:From;
	b=QWutm/Zhv/SL6leeGM97ODoWIBOtbZAljN4H+9Ap89TpCFDffspuIx4oezQLZBEYF
	 Zro/XM7c5EagGCUAAomZNAA6uEgmyMsCkn9wH9/ZQPhkDs1wb6Lsvg/j2hIWG0mujz
	 xBQHKUjvTlO1IrhlqtFLqU7mewaFdI0NqAsAhk6wSYEP74jiDH4Eq2GLV1m/rzNlgD
	 Uzf8PE8jhLy/6Tfzwhtzxm85EEQ5ojdLb50pPASIPId4UR0sdZxy9Z5e3lhkPJoPAY
	 thYD6w5VFZgTuQ6z49EKeSMepAO7jkyheC/DAT5tVVyfVN0o0tR9Q13sWPKQ/wzYSk
	 yKTdC2sTBhKPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D12C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430165332.9485.13809863194612044706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617708626fb2c776f6636cc2eb98f429b762a590f8c20f073de9696448eb55a7
Date: Tue, 27 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664301653
