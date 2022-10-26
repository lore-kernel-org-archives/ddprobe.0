Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0801C03
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3E5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666792253;
	bh=MBe85rIS4WNShsGrUK2FebR4HKZKGc5ADokj9DhaXgY=;
	h=To:Subject:From:Date:From;
	b=VQxpLI3Rc128Sa6zr+x475dBGjif6ytk5lINL2uGrU/mLnDpnvA/feDLuc9uy/O9P
	 Ly1hePr9qJVuEf/YSovgjDmu6q+/p/oPgyZhfeHwND7dNtDPL8ykgYN77l/eNWaH06
	 GLdsbJcVD1bTIx28rpcrBrYFImxHnAQ+GVeZVUTcoW5F/q4343b7GyeX6jQQfYfXb5
	 kOEMKgy0iJEloPQ2/SoSCnGMaUacXBVga7pa7oKqWSB+LjqY3hDS4ZvcevvEMKk+dB
	 n1OvW7gNCb/QRkkQf2cGPzsOtee2EXtChiXD9v2HQn0KFxXQycHBam2Wve2E32a9Cx
	 F5EWrnbOPSCVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5624BC433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166679225334.18712.4758122477122853268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fc176c8d881102358c2384c879a9ed89bb306f87e5e87dfdca0c277a14c78f
Date: Wed, 26 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666792253
