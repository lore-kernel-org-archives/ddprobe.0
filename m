Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA80F5A68
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F216C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662826253;
	bh=rm2apslrjiWLv0C0kdD23RD039g7yvudNpjyjNypf0w=;
	h=To:Subject:From:Date:From;
	b=SWyR1ewrXmXoasoBlm9pq1xr71InL0wVM/v/9zzVlPhF1cEQoF5sTuPIasZleXme4
	 0TCkdpSrGd9tDwAoPCvb9+43DXfGjq5fnm6vUfUxZfwnYN/6efWcMg0IMJ6xP20Y2j
	 tnoMPiCo/Xb2rvyM/6gy0LmlIcUcnAIxgln/wIKcjt8Bv4fSabDeV8Laa2wLRLy4FH
	 4o8tWhj5Op0r1smotwSJU6+/jwr1gErzpyC5ERrkDZqjNaOM4oUWizLcTOCEuPtV7p
	 u/RnheB7IAQCaEPeIykrxkVy3IhoV9Bs7Gf/eqA8PSvJBjGwonOat53WnA6mJvgQsP
	 huSZnx48wCH9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E96AECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166282625335.28050.4643012314324434432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a7bbdd1e0b6218b574ef6990bf553fdb37f367d9f1435cea1e0642d4ad1087
Date: Sat, 10 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662826253
