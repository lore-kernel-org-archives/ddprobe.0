Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B150E184E
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 721FAC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668262254;
	bh=mTy8Qp1ViAFB+mgPDKsMYgSOqzJvB7MC9k3Ui2NyeWI=;
	h=To:Subject:From:Date:From;
	b=eXMUy+/3JmgADEZ1CfXen79KRtnzivY1D3AW+qHKT284HwvsIM6vIrGaALjZVlCVg
	 emUARsJUB+y4pk1WwOVhUGsSHA4DL74CijYGjTMaTlZVmpcGpP2eaLbSmD3AIndQax
	 ojGoGIKAPOLoZuCTwtbCmGeRKuuaAdv4oqwlf3MwFmr9sYNJcqiGT2IIYwSu3324ZO
	 INFV0p8I5U1KK5Lc8ZwnSuAUl2V24JH4ICPh0K6QLzlshCqfmOSMsPkzU2mkJO3hYx
	 UrkupwTcKizP/TdYil8y2ojq9QnTceV/9Jp1ObBPU2GUaVsNVFdrPA2p/Io2ZzU/sF
	 4j/q1eLAeVByw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52283C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826225432.4080.11440785337914194413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b371baf7bfb07b3145ec8613e4003cd28d3d02e5c749eb3c6c86701d28cc2b
Date: Sat, 12 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668262254
