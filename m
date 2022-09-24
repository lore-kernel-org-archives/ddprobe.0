Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8091194
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A440C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663989653;
	bh=RidhTSvPznUBGWSVGprEReKLLSNQQ4tceXn+GWP7LsI=;
	h=To:Subject:From:Date:From;
	b=ZW7zsztAoA2mZYAdIsI2qy4/aDH0vXtHAWrPCoYlGJ675AjgR0rUcWG8RmdaVhBgH
	 h/hT6BhkkaNT6Vb1Fwmfomlx98kOqRfmEumY4p5kbobPHo/dxR9jdyXYUQUxbHbNOr
	 i4sf8sP56568IhffJY87LlkGpI5v35H0n62gEMydZR1gmk0EKUHnbh7F8JEQxYCNjx
	 FLHH2wutYC9MOBpir2F6HQCVBD0Pk1y3iBtW6ij4P9VVsrmnUElYHkI8Ucsrp84E6A
	 XSnBSD5EloeBgl4UHjzusXFPQDj0nCQ8z9xDlK5of6ERnIKPt0A8waeoQHC4kI47dP
	 Yh2F8onUUZwWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526F7C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166398965333.6999.3543555500344623775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e53863d96d4d918f8b1394dec4503dc867652eea111dd65f023f48e204ae79
Date: Sat, 24 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663989653
