Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCAA67B
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 760A3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668247254;
	bh=6fl/r1oNas2pNq2SUMHFwAlos+3fIpm4f7Y5veXjneo=;
	h=To:Subject:From:Date:From;
	b=Rm6cKup/28GLaVCpRKUG5IRtSA6ycTsI6LxLynn6H3UpBXJ/BFHQz66fLLIMjw+Hq
	 GkWtDtyUMQoKYKE3qMYOd1cA92LCenR/KBPWeHT4D2u2XcgWzuYC8KLvoSEdSWoPOg
	 h0oq31Xr2zU7gY0vMSRQTjImUioRl2PQNYsyxuWsPCSNB5E3rpSbcHbbfk8aSULBGb
	 PRm8eEFEnTh7Z3mkVXN05ZM+RHCkqKhRo7H08iBKVnC7ATtYZdzca7yTgjVnuLd2JU
	 UFWg3pxjvSOaoC2gfUnTuCKcvAjLWsDFcBQlfSK6b4h/zpGs2saqHegyt7pkgotJw7
	 MOHJBf0HAHCvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54739C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166824725433.25182.7763036028915792238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c9a2cb3e6f81cd162ebbf8092c6b3522d0aeb17e0ab706f2961ac30964ceba
Date: Sat, 12 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668247254
