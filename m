Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD30520F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7250FC433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665648653;
	bh=D189fDQXVrNH4Pr2gZVZ6KxFI1Qpd+mmCgayLc41FRE=;
	h=To:Subject:From:Date:From;
	b=pBGR5Y12HR18yqiZIBgxBdTYFC89nHRJ5uD2qfczEljnINI12/8Lv7MSvIS4lkL1Q
	 zHqtBxozaS4UWWFqpkBqT6Teo5puauBSVZ3rTa4+ixGqnjmSOixUQKd03H5GHfE+//
	 R0W45kxxFD0UbXh99zTieoxQG2Zx+LFMD4Hfm31tiBNynUR9yk8eAeXJ9s5+usEUV8
	 gPY8jqsrlogXlaseq1Ymmt0YKR6zwtxXmzhEu38Cky/Aq6WcRnrEaTPkRzw8DHRM28
	 0eUzogndpYaiM67sNZpBytqfv3DWg8t0l1z6pXiQK9C3zqGHyHwrWkjT6CezOeCGjH
	 dB2yzuiPulZyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D53C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564865333.17447.7511225815120554353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077dd46f8f7a5d166350d01bcffd7f2e058157f72d6dd5d21619bee9c4728a78
Date: Thu, 13 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665648653
