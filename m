Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD7F7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 03:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB071C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 03:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683169265;
	bh=N6FeuqOgJT+Cviv2jc6paIMjTCn/kXCYXR6tVQc0IIQ=;
	h=To:Subject:From:Date:From;
	b=h9JmI0xSFQUNKpF6ep9H/D6DQlAaO2QQ35sHF2NlSfYkBVB+DXp61/4fKU2YiwYDU
	 Cb1s+eu2YCnp3wDe7G00hmHzcXO+v/zvkypouSAz262FpyeP4vwzzvzJYSUjgyWyiR
	 jXDlk2X9/wsgNVqoE+K+OlQr7tPJ6Kxl9AKlmxxFJ9UGOd0FXVwTF7Gx3gGChqEZP+
	 FWkduViX0vGunQubxkyY/ILmn6w//o7ivBeyJpkgGUeEtE/v3MF3EfTjBhL2mGquxW
	 MPtAt5GmowI0BxZziLXaN4ock3gcE4sKluzWykSQwjG/gNg7MrQ3j/knSysrGAkEwv
	 jO8FeYn5m4hJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC66C77B75
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 03:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168316926577.26265.10544107878514373972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95bb53c7bd3efea1aeae74267f2272c8a2d73298798ae28eaf03969a69af2ce
Date: Thu, 04 May 2023 03:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683169265
