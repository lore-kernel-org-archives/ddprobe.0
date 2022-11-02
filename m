Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9ED17E3
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D73C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667379054;
	bh=Oj88CjYmzMSGu6hx+ZuTDIm23Qcn1SpdfkX/K+nJVRs=;
	h=To:Subject:From:Date:From;
	b=IJEySU+LgYMO9N13emlCQU05Xmylo440VNCVmW/mm3OdxyFJYcaSqyey/PoL9HZIN
	 bjQRmA7hxZMSY9cQm1X42n3a9y9UhKE1ZfzyD0R00o3R3qxuh4oCI70twS21pGqOeg
	 B3HCrsjGKBiKXggC7g5NfxDbVPw47HM3mPnbzJ/JICTkjhiNP3dj1WALHoGK3XmFIG
	 SsoWBvLtXNNnDGZkSvvJX6xfSVqa3GrFqakm77Uiuw+YYCHN3PQdrPuSL0p8iZVI6I
	 RfBh+LtOA0tsIHnd1gdhimS7OVKAG09C7jw+rRDVIYJDYB4ky5NuiKURSJ1x7xv9fG
	 Wx9ueOt6wT4Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA4DC4167B
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166737905436.11585.8399777364352827398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be17f045f826fc66860bb994fb44f229e1e829b7e701823fe760584484f8d400
Date: Wed, 02 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667379054
