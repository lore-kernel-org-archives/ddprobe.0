Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6E719B
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A119C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669540254;
	bh=VwUL6zYET3dD6414//yK90S/eDkzeE7H8odRj+rlr4U=;
	h=To:Subject:From:Date:From;
	b=rilyG4dyIEXICXm6Dze0qcAEbSz4WHF5Golz2fsUHV95voi94+kTL0yrMzrPfmIGy
	 87yIE7IHR//F8jlhaiaXvE2pVwYlbB5zi+RNqvjxBX+3GCisx496ilLbYImbhCnjY8
	 AUEWQ10VbXuwOh9VkXWrn+vEiibUVP0I6JNGRY9wBOeHPOzK2eaqC9Pw9qmayWKGr1
	 /vHjjA/SaEhHWTrdo46xrNxTAgiDtvrI9DCsrSwcvxcKKg1ue2zsqlEB6IvLXS84L3
	 rrgxHlu8GLa4l7NyjubxYs9KPQYhfKJGiJ9GiIpyOeIRY9pX39GDBg8VJ98uIrqBVg
	 V7oxl+nib1mJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5174EC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954025431.11069.13083264557557136005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018781e46ccddb128da07b9f277fdded87d2938f1a9feeedefde52b37b516d94
Date: Sun, 27 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669540254
