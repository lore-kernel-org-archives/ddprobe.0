Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B637F366
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72996C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668090654;
	bh=MYrnEgJjJ1nWWsQOisFk2L/FfaYB0A9dNcXpcS/poAk=;
	h=To:Subject:From:Date:From;
	b=Mh4bndIoFcsI+tzd5eIfPe5WQs1G9eGF7IRpEvm955GcP2RYJewAjItPHSJLJ763N
	 fTgcc/eENqMn/+oHmO6ShlFtUGl6qT1AqfcizAQnMuIIxE9nUo2hAe1EvS0dcxOLJM
	 ArScPDayHRbCFBghqma9Kc6hmgtFSrzkalwuG8Xcw1uMvgBsl2cVWmtHSDr39KX5G3
	 Pz1mqaKU45rZRaabYEyBfLauzBXm+hPik2dI4QphA4RXWAtOIJPRxp77I3D3qzrxgo
	 FVIXM0+pbV6fag4usCP8xpqdUIDGkdfu2/DEBIlHuV2f9JPxnE1du9BgqAjH9qhbVj
	 u9o/tmr7bLuVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553F0C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166809065434.9401.1982826355181775886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1965db79606cc706a087e64838c35a1ea63573e206f76c33f0f7606f4d8513ce
Date: Thu, 10 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668090654
