Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8C08491
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F777C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669584054;
	bh=sRnHUkuFiDctc5HwTsQSLB4vKmSPIdX8O/pCSXz0H8Q=;
	h=To:Subject:From:Date:From;
	b=KF4Ll9jldZC7TuXhtjcg7qIL5j6GXqrFAnZbtMxXYusoscfN4dk1dAt9S1r1T4mmt
	 soefEmOTtWS3fuMlvzw833TvSuC81HcQTARxCQ0jfDNWQbps0ygBmG76GncXtU3bXT
	 xEJ9Qs8DIUv/suWOgP6MJ3D8OoI5xr0iY35ZfWKEYUdEWdg9HWAkqw6HWtXl8mYQra
	 5lfrwNXvtD63DS1WWnt79PPxnMujJd0pCtEtPFIpLvOhJL7rBFQ4lEX3bEIQX2zhSf
	 G13OM2fCjat19xvuBk6HmXAUhpwWwuMuTZ96okFX/svcWSMTTiVEAk3MyfB0gGahZR
	 TpPOe1wDuYf/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52036C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958405432.7203.3263001931629184832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4782b848909c2813be3e7aff80f116fcb717cc7b200302644c9a071b930c2137
Date: Sun, 27 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669584054
