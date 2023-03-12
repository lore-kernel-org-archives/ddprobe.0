Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE821877
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 08:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC067C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 08:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678609565;
	bh=eDmPT5rOgVhG3MOqOwGc9995dOHbRYhpcW40UJ8roxQ=;
	h=To:Subject:From:Date:From;
	b=TH3A+gU8ZP2x9JbuN1Y8RbFlNOuD33uqH/DwmtKFTH9miFE8puNWB8WNeh69OxD0T
	 0W2ZXCtJ69JTY1ZcyNrEl1nAZdlS2cwMp386Ofqv4WPUsbhNg7MNPWVVxvYWLYUQLC
	 sozFSlsfLePZa+neZP4qDGYyvCFAkCPUGMJ5qVvsITEqL1oPVV+Z0dmf+0JtxMjYlp
	 TytxOCiv+r5A/uHPzpnTC4TR3ohYwdQuYkP9WJpH1FJwrrQB/NSt21qd8BtZNkd2u/
	 yF0N5/nilqJ/ZXnal0qLmBOoppKMBokPBcU4XfF/rNgMMJ7pPMmKr1pnfrSUGxmU/D
	 h/5QRmx9vSSZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD22C6FA99
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 08:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167860956575.24756.12842773704200365023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44642d74d577c831db5828328c376dc303b567edd22ef01fe2b42d60566c23bf
Date: Sun, 12 Mar 2023 08:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678609565
