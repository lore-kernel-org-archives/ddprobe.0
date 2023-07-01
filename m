Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626FDD510
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B7BC433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688240048;
	bh=87UyQT/vsDtH2F+NQlimehfegifCqFeSIDpxaD2myGw=;
	h=To:Subject:From:Date:From;
	b=eQQWblHJPvWj8too3ESqZX/y4lRsuF7Q/eDmI0W0TunsOcDOBc6++jN/tM0aIRBiT
	 3lHBYRSalPLcmaH9c/J2tEjd13NYX2pKHU5fac1FEBA+0s9F9AIeVpR6dZHR0g3aA1
	 NyOnZhuSioK0xRL2PRLbw/8Dn50Se+LAhEkl4r7tLMA4X9L3QNTgnGxiSDP0XHNNu1
	 nsDVLCsWsXpUO03MSZkvdgsOYscAxadOjozXsMqCBODXTusC1/77B/R44fESiZAExw
	 G7Dib8TRTgsuxYJ1stDUeAeQlXP0izzaEUZ8tSTzOfC3sSDARlmnr0cKaBkgWXAtuv
	 CU7EDCeJueEKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D2EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 19:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168824004869.30042.18285849685928794153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28a8de447107a08fb9249bca61778d3f9d68e1cc40d73397b6992f9b45b7bc9
Date: Sat, 01 Jul 2023 19:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688240048
