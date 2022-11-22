Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD92115CA4
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71487C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669159254;
	bh=wucadr5y6LzDltwljAXBGKtg+f/juJcN/Qx6bX/TSKg=;
	h=To:Subject:From:Date:From;
	b=GGN5E8vVA/mXfKeBmbsiWYOC1FlgoPD7PAzjY+jd4UBw3g2L6RjXzHVOu6LPQ3+Wb
	 rKAGKQ8K7KR+5H4tCX9iaP0UhG42ahYZQvbCIvH8FI26R5WaeWBzNpRFWjWeNUZ+au
	 c1/NEsf+Xlh+Y7GdeMg1Jt8t+11r1L6EqTEmxVlJag4t4PPvXs/49YF2xym0ASK5GI
	 Fn8DWSpfSpoWDns160vKIUZT86uhNiX0Zx/J9DccoFceFWJYxY/hDg1J8WKKIKTNA6
	 +2EzR3GvIhWqOdHSMmxgAZ/xYzvsv7W2DHJrUs2eeJda8RImTIeb2UQW4cbWb826aJ
	 GsZQT4h0rOuMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 517BAC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166915925432.20666.3235983335288947280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d2a535366b1afb424e57c1bedcbcf9c1b4bc6ef8bc2464f78edd8ac4a4a835
Date: Tue, 22 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669159254
