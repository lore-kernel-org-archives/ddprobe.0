Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CC920E1
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 09:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyTTYWop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC52AC433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 09:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696757228;
	bh=7FwC2rpZIMJLvjiPrOvKlbYe9TgVBbN+tzIFfAwgMSE=;
	h=To:Subject:From:Date:From;
	b=OyTTYWoppw2FP5Z3PCNLdqYNCKIFCYroBWqU6Sh2v3+/WKTmJjRA0XUjL5RyLOM0+
	 2+q4wrBNH1Wrf4F26q8QBwPrUsI2/sCyPKSaL5M4iq1Oy/Jb990toGuKIEHWdpWbwg
	 7osBe6rzv0SMdGr6bKhp6ReHNmPOa+YqArcCOCYJ5fWSIbFNm+sJzv2G4JHS+R+mXo
	 qZVdgLJfDRozloJIOrZq2B5Mob5wAXO3nFKLDcl9kLHSOwe2DAKnlBFCnVq4V5E5w2
	 /7JWSTzpVrJOX9hzmJC2QSmll8be7zvNxhjXuO6ne+3yZyK0+QRoU3fYOcmNi/wBMH
	 ClLjw0Ap72+Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA09E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 09:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169675722866.3615.16671908483904963944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e89fc7acb64d996cd14df8427a6968d60ecc8eede7c25cc2573847993cc534
Date: Sun, 08 Oct 2023 09:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696757228
