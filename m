Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4187E1FA1
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 12:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADA5C433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 12:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674736385;
	bh=bm+uY1XbRZEeBVYDoYE8qtQ2vG11qyyAVzUSIQ/6sqw=;
	h=To:Subject:From:Date:From;
	b=scUxr/jJoG/uGAly3eksYCrPNM+8ZBqDdQX3prc+vpuNkuHNuUE6RpXJRrKGyhaUu
	 WgzdqpIK13JWumCC0s+5Fi+ZbrZWIq5XGiKzcr4ICvOvx/Vm+aUFXkNoXq1s91LVLe
	 TdCnKXnyq0tNe4cKWTPOPrGM88pvldWVTAsxNT8RqQGSTcZaIkLqxx0BMXZD+aP0X2
	 504YhS+7Yr66zPph4axEFdzj+oCgduE575YfZWe7n6FiZIyr9IvuICN/T2vS0LM9kr
	 nYD0QNbFZb+lrrO4iYJv22BhFRgR1MGUC4gSjGDTstTJ2IO6KQH2igpiUls9IHx40I
	 6hJ5DYDaXcmDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBFDC54E94
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 12:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167473638576.27889.5527900264044805045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83e0b5511700d63ca4c2df671ca7de97fa8e2c9b6d5cd8705bda29b8a81a566
Date: Thu, 26 Jan 2023 12:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674736385
