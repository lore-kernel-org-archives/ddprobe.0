Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAEA29A8
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 15:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02B7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 15:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682263865;
	bh=/0D7rJ12VNxweIIzj8VQixky48qxHbAil1PJnlMDntI=;
	h=To:Subject:From:Date:From;
	b=En8D1ScJLFFvajurjeZb8HKgRne6n+5Fkz0Aoet38b8Nb0ptScuKzcAANalJ400iq
	 av1Hs2ECNoWMWL3A4cpQkCuATDiskVx8iEIOKnAtN3e/HrbPxMKlS+je6gZI3lKWs4
	 63B2mE9Hn+J2/RmKaAr4QEpCcWpL806m0UZi6LtR1QLH/BwEp++T5A22M0Z4lVlMTG
	 kjIn57gm1MlKQTOj0KoXrdrnYFZuOOgb52SYHltLfexqcx059c0fUGQrvkm/VChISm
	 FNty3264M9r+pofd/DcxLX/FHMwZeYyy95qx/SC80RJLDFYTycBJmZLHAvM3y95IN/
	 wwnzYB8zGT+cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43EBC6FD18
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 15:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168226386578.13458.10755885558026980201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1978b3cba6d741f08c889506e59d5ef5613ed990f2c5abd069ccdb07018ab9ea
Date: Sun, 23 Apr 2023 15:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682263865
