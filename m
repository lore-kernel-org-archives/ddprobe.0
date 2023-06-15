Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DCF379
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 01:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC885C433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686793028;
	bh=Leva3x72gbdxYECvA1OY7tU1mHRTqJfFWTIGVk4DsD0=;
	h=To:Subject:From:Date:From;
	b=rmP1f7frSwsQP7+1xY6BZAE+O9DLHGVK28oXCstSUjFBKsMaYaOT/+zwiRhsP03hl
	 C2WpdDZYI1zE4Ks/fvawDFMXlDwBkFaTygCVUO9sjJmbJp9ZNNXperSzaO2vxbC8wW
	 2MJZugsqggzq8opiiZtq3R3Hjztry6sqNQKXOcQ+ObmRtTCp3EGAsBh335LjHD1sKg
	 c902YYAmQWGDytjtVAJrMbonCX+UjyYDFvwmebvVcngoppvLOIBO3LD6Ib6H2klV3r
	 mKBTQwesp9SnblnU8bHBccxOqzZ1EGaJoNfc4Yv+im0bqS8oChG9IXhEfAcOVZYYMX
	 hwcHEiMUq6KMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7F2EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 01:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168679302870.13844.1914399768613349449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5323b0364b03e200a7b12fc19c464c3751db4c8a0b3d924f6aaa07e7c89f124
Date: Thu, 15 Jun 2023 01:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686793028
