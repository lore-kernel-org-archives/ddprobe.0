Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624ABA23
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67A2C4339A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687950188;
	bh=woAhyVR0RLkDEb5uhCQR6P4amDPU5t+6R7bUoxeZtcM=;
	h=To:Subject:From:Date:From;
	b=ZwzWa+rSzghVFakfjyanV9wtlLeX1te/wlrb27QQezdPHAuS+3JOU2m0woEhtTLbV
	 OFkqgmCDeoFI7xZMDJn9PPAtXYAp7iJDyQLpq4PdWR+kRT3yOohYklK/g9nHFkvcOd
	 B2GxBfiC3tSVWSYq8LVubL6p/UFclTwXM6aUEzwplteZCErmAk/RrqQh5/Rcfd33N5
	 GqRFoPwR/W6Su1iFCk+hWQT1Fi3R+CdY5ch5/tzXvkzNUeEkbnDtghdovljynDQJq8
	 WAFBymWoIA8H+XeAqoNwxg0H6KaPDm3acuj7QWKtw5MK47+QCC9J9rRGLI/ykNa5L3
	 f0hHY6SrxtfwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B0AEB64DC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168795018871.25479.915943768869752788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771526eed47c62816baafa8d5f16533c147582e99e306949ddc63aac178297a5
Date: Wed, 28 Jun 2023 11:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687950188
