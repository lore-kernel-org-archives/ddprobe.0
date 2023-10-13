Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCDF12B61
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 10:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmMqCoCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA932C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 10:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697192228;
	bh=sxiDaC/OLT41G4XAy2sHC0xiKhE31BX79VPnmSz52dM=;
	h=To:Subject:From:Date:From;
	b=LmMqCoCLLxI+I6tWOtcotm2Zahsvc2sCMqobL1pt5tbc1Qkli37ExagMD8S8AQ/WP
	 cfPrWK9K6200N/7lJ2xKoL+ov0i+6kzpQxO+fENev7A57epK/qXwjKIvQx492Y59PV
	 powGTTmZCNvH4J9yNXYcFENAEUv+w69JCSysZEZQSA68PTBbFZoJepbaKlzepkHq15
	 NkgowD4pvN676w09ihBJl4O1556QqD9hEuC5Y3BK9UustDqCmrt2r6+B9JBGWhc9AU
	 cS99CRy61v8eqe00eb1RT+3A/q18Wjc5MDbEGccflfYFQT5lQOXcq/vysJAthG8oHA
	 oaBmtHVXoh0qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE8BCDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 10:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169719222869.1768.2225928053880671228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dec40a0edd9eef09898286bbe383203dd9104adcea5f1b9ac4517afa8bdeef7
Date: Fri, 13 Oct 2023 10:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697192228
