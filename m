Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51067475
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88861C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671732687;
	bh=rU5hmvHE1j8oMV6x/T8enLOQccglr7KVjA6XPNZGFDo=;
	h=To:Subject:From:Date:From;
	b=lrbd9Zgyjz1xt+YWNELY/yMPaB/l88BGFT9p06eeEilTi0KYSiihLteqsNvF7TPb6
	 oa4PnB/2gN4yFjWn1QvyvrRszWmxpvx8sXssy3S3pPBq450wugN2dcbBO0bQtkoKjk
	 fdLVtFQ6ClRP4tJGkVLffmpvTZ3ieGGHgvOTA2/Oy/svb1AIAGID763E5SGC9A5KfA
	 It/8Z8Bx7SaXXJCO/8eeWr1LQOUSLL6GsrIVrByy+mbj/b/PaRoYuSYRxifsCc0rHC
	 GRUWToGVi+Naruvu+4peJtq3bEnNipWYKYISw7wS86i8eGLCitv172bxr8hDRwbaqc
	 78zfSzzSkHnJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B0A8C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173268742.31536.13240509600772093529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48efdf06d66be3def7db5f2bf71eff729593096077fe70b156d579959c6d8b3a
Date: Thu, 22 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671732687
