Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFC1361
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F02C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674267125;
	bh=g6tkIUunPE/Mr8TSE3JFReAoounN12+KY1SEa7xCtoI=;
	h=To:Subject:From:Date:From;
	b=uN3oykLyi8m/CUmGJbZNo8yNEtRyB7w9UvLPfOEt0YvTZFaRIqZ67HNL7m/ZpM92R
	 9i9J6dSp5dd3yrVEjT0VOzZNklMlxU5NxqEITFwN0AXzxL+jxnGQk/SJfeupQfBe80
	 G+hPHxDCibYRrNi9H4LSrTp2yq61bjLKaYMo3fhOKSrCpZuUlDt1/I2IHJCKG5gDfg
	 j278rkvLy8eg5o9muPDhGPlkUUqOtDChJC2OQpbBlZrixZAmHfg0tM9Oocjv+xRKXQ
	 2/ZmNIFku/I+cvEV/T9WJxlZSZ5b4DJk0nt/e1Uy1TL8IMQyh39AIRCgqIEqv5/429
	 xHP2gMJJf/UKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD40DC25B4E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 02:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167426712576.20218.9177942461488915501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e21507bca23aeb184c596c39e10de77d461708f09079f850624ade8671c843
Date: Sat, 21 Jan 2023 02:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674267125
