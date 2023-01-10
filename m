Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDF315AA
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B0CDC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673311887;
	bh=yHwghZwsxwtjpUEC4G5wb2r6Zy+ZJeGp4ZhLZnJ1lRk=;
	h=To:Subject:From:Date:From;
	b=qXjdX/jGwuCKefWf/A7g3zNyTsrP63TCmdRYIzGSB+dLEFca6k1kWFwX13GRESX2N
	 1dLdvEVtiAVqj/9xGquIXFNH79yx9Kwdd1grUd5H74ZrmGLzTDm+Slumeh0ABPmfKv
	 WiZrH0SZuAvZbR+Pd2+kcHsF8mFmfn7wCZubBYl5UR2yI7DHWYsFwQazNo7wdGJaEQ
	 UnzvSCBxSTj32U2oL8kT7v7L4vdAFUkxdYcwtnGGDh1pguWXozrXzRf4t/y2xtClvS
	 r0bgp/PibJO9Wv5Wr7yl+yGRMYl0cyekxYJG7keY4xs0IJntppfBVJVbtgiwHDot27
	 tXZF8S8XnZVOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632D4C54EBD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331188739.5233.11360421299504879891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d035af3cbda1230e3d17c219044e13b8ebaff899e9a8d3897df00da5b12e7fdf
Date: Tue, 10 Jan 2023 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673311887
