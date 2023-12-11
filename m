Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44832168CF
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9v54Apz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFB4C433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702268896;
	bh=1ZQskHKkQ/LNVFW6DwFApGaWoyNg7I7Rctkb2/aLZlQ=;
	h=To:Subject:From:Date:From;
	b=Z9v54Apz4Iq98Uqx1Fj98Un286psnKoRKSUsovwPu+U3oHbAgTxW8y+V4+jYyuRDb
	 JoL5dHAAIs1RgrxkqRjlEKgrKeGEFbPWH+mBkCeoXE7biPn9eLlX6N3JUJp0CdG+ln
	 //+egENi/Cgv8Czo8G3Jlw0AzEArlxoHIDHHRSdsOY15C7Vvh0OPUXvOfmo+GYEFrb
	 3VkblpyOg6O1t6Aa30OLxr/iz04BKEk/k92aSVbqyWF6c7QCQUYD1mnH+l8s11+zZx
	 9P9v3/mP35BI63+s3rbZC6YcCcThSjvXVJ54oTfnEYPowLh4xyTPUNmD7zH37/unOT
	 PwlR1VIBoLI0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CD9C4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170226889637.27507.5705456477267158135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e12bb809b1bcd45f83b5bb1df4d7e26f8176ee507eb5c4cd88fe4e2afa942b
Date: Mon, 11 Dec 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702268896
