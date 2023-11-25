Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390239453
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbtVsATo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89350C433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700905696;
	bh=g2D0HXeQ4lF0EYoHBFbvPHA+d/ivklgBiksQH+RvshY=;
	h=To:Subject:From:Date:From;
	b=LbtVsAToSMgAKngih6hYp8uyOHyJFYfieDWL0HurIIEXMSkTWYV9eHjwrHauAfvE3
	 /qYjlVin96ASygkOQk5BEuMmIWfId0CYDMC2ZkRh4ROeUaY4j0PrGJ2dAHayySdNi4
	 iXh9JSr4wbHSQLiAHm1d6YQF/hAPfbERLfUM3g/zmRzppuQ0sv0/nsBj7Bb2BJiDpu
	 mSMAjlkjFRbTpB3vvZCdBS8vJXitdstqnYOOWWKcleeAJbj1tPaC0U8kFNIY/CKiBt
	 kzt7CQlZJsNaQBXKqkr7b5daug+9v1jUJnhSPo1/rDbeyYHbOwexjGVrSos3x9jMOQ
	 ZTw8fFyab04cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6487BC61D9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170090569637.20481.5213189134066824721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a766b044762b6dbaa447e1b21e13668a2fa780ecbda3d805e643248447ffcec6
Date: Sat, 25 Nov 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700905696
