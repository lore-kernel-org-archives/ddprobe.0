Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E3A194
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F5BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667096454;
	bh=nj1ZUE2BBRqy+lLYv+t9o+pLiABV3dU8A/2rakrsNYg=;
	h=To:Subject:From:Date:From;
	b=plp+rNHFLGAFHsc09UzPvAQdtWUIFWOTCiEnJKddtIGsG5E0J47KQSzCmOOMHQYNY
	 OI6e/6m6Q628/klP92q/5lbWzC153M5b6U4+O6w8OChkf8dJ3+WWvsb0U3jPEIELr2
	 k69ef8C02bxBQdgGDsTPF/bsUEUr9zmkxhoo2ogFpzfisDJo5pgmsF+xOAvKJ+6gJf
	 9bqxpShNUymnawywar04tgpsaeku8yA+RvgmmCxmrvsdKMAqAfoTO5cVVuSbuRYiE3
	 Xh167AXnK+U4UDnFsTQfV99r40MPc/jSaZuJyZdi4ATIyXGpsBhzydsLGeD/QiIvFs
	 MKya5ZGk58CqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58248C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166709645434.16778.15805145714137713817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40984e9885e970380279307f7e3e78e56f3a764c83ec26c2110f5a657b60ed54
Date: Sun, 30 Oct 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667096454
