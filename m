Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E371873
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8990C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671976887;
	bh=kjPivNBOsaawMOjj630aUq6MFn8ZFZYYmSMRxv6RKVw=;
	h=To:Subject:From:Date:From;
	b=c077LrUAMhGnA/HLI9RhqPCL6WBWILJLj0q0uCkmiEya4tJaHbS+zLkDhnJY/4DVQ
	 tavsQiGDeSuI+++zSAJWeaEkDi5fPQ4s+8DhTp1Uh5Z06uVeYyqk0JA/ME6daYec7l
	 7Iqk1ifrSr+eVU1YJomIO6nHSHDaxVUucvxEtUWG3gJVytclcXhPtnorD6r9J3FOpB
	 R4SvQYpHbyQXQ74wYS4/JXaVEpPbAp80usn5AAwmaFLn4ab2ZXbpcIaR6UdbFITMEd
	 Nkhc69e2ho0misa3fZYr+vINJyL+QuP8SCGDIgnvyNaZey1nWKNsIClx+pW0pcEK8S
	 B5PL0bIcZuc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA6C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167197688754.2796.13660363975944315696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bce50ca4530a2fa9bf46688bff97dbc813f6ec9640889f862b006ff4d1fe751
Date: Sun, 25 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671976887
