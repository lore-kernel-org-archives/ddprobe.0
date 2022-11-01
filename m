Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23527B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 680F3C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667341254;
	bh=NjaY1gpEAjpH05R/daW9TgP66FvrcSfMtheE/11IhqA=;
	h=To:Subject:From:Date:From;
	b=jkmvm4YkYmoTItbVC82Hm9TqyQqic8mQOY2jv2fjGENpPlLQ3mKaYda8HXrhfkeRp
	 2Mni0yYzQLRJhtd3llPDwl2h/Tnz7m04Mj3J9hCjO4Y0SHzJ6EJ5Y55OK2bWYDTx91
	 hkBMhxaK7FiHiRy5reTxb+YSohrEjzwxL3pyz05jZTOonn2oH0Na2ijrSuodhSq9st
	 TDs+uVQR3ZgkkLZj6o4ch+Rq87NFkzKYFDZa1GnOD4iv2o7HtE8/S9sZqNHP7QOD3w
	 y9EULmfq0AxTCCAf9tZHpy1fHvSoLmnS1Kc7MchglUNUDGq32ymI5s/z9PP/4cet+M
	 5FxQJwO06MCCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512FEC433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166734125432.12342.16871602764939609745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53af6b835c925dffa784510d8cfd4286242e575d4bceedf21b19bc13686868ea
Date: Tue, 01 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667341254
