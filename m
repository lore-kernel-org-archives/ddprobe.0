Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BD5628
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822F1C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673582487;
	bh=IogqaqxxWA6Vebm9iGyyrEO9AOdWfe/lo1NNpfh82pI=;
	h=To:Subject:From:Date:From;
	b=ZZnpUU8BjRt85m/2sWYV5tLn0x3xyTwEV+pT5M5kZl+KgYkif7WCQGs430Ah4lnSB
	 Y3Bvrz/TW153GL6kUnIzIkPfN77zeErQnLYRA2ABTi1x/dhL+R9DHWB+TQUegEyGyc
	 a4f1X66HdMqSCMx48mwm+JV/Q8oSTgFs1gT8s63IjqRHpMt2Jf6PnAVy02W5yXBtsp
	 b5wV4B5D0Gw1CBUnK4AAhmIMJLsreMEm30W4+brR9qpdNGxGwweW3sjJaZk5mbyj0w
	 Wi0GggFUqUXBh1sqL0XjNIZF+xIuP20JVQNendT0nRD+AQKPO85jVDfWwusEV0NHWx
	 ru/CQJ4QqOcWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6684DC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167358248740.15664.12420041872993959280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ed1e6bce2b7d7e15dc70b7ffea5525bf78352c4736fd8752e574546826d687
Date: Fri, 13 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673582487
