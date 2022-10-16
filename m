Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC034653
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E2FC433B5
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665887453;
	bh=LqAl1cAR3fjEPwpUJUaWdxyaOlEkBl83vUWex5J32TU=;
	h=To:Subject:From:Date:From;
	b=Auti82yJwxCU9aCZGnMxR+FpvOF49tBMr1vicPkXjs/ts2W5GlMcTFhmjMBqcdVbJ
	 7OCDZRg2TUT+12G5M1SG/S+FpsyD5xMHtZQcjwnBUcD0DgeHCOYvaPf574JjwMiHS9
	 M5F8WG4BEa37H8VP6dVerWrHzVdhF6R2onM4fSxzFGrwlgM5w6DDq+mHVIjE7XtBoD
	 k3AN3E/Tl/WZBeJZESzN9Zi9fVCvlrWJ9Ze4h4qJ/XX01GSTGnTiDzO/dh34bB5nf3
	 2ucqB11XQUa4WADw2QcRRC9kM/PRv1J3w0zqXS6JOTx1NCpgXmD1OXYsXEujNnjH12
	 sxXOTTXLNZM/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A26C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588745331.10837.15865727656441675093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31631d312735eba921babd86f261175613a588ae3c3412f603f60b7e1c7842ec
Date: Sun, 16 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665887453
