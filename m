Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C1415A6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE43C433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688087588;
	bh=MjjVkOVW+y8Vzzsf/cnbdsF5T+OQXcqZVeVv22u6Kc8=;
	h=To:Subject:From:Date:From;
	b=owAqMyu1OfCo98nDT2pvqUZY+xEZTU81wiwdK4afnHjmLgwdPQ96fKbYrqmMc+bhv
	 iLt55Yx36QMnqrjf+PCi1KM2JngDxwDFCnYNcDMyrJduo0zPTC7QvIvn1Kxt9lDUaA
	 qIFz15SfzJyZYG1M3dccbKOf46oeOsxj1ljlzgXHq24moiMC0XLEFFSAE4C8Adu0Q8
	 9+Irzha9ddDDly9cj6ePhWXJeR8PxN5frRw7e18tIje57OAJqMkowvus5koAy/8ues
	 JXRshBzlkEb4Zi3TFuaQYGnyXKUM3uHjSlCRDZ78DvpLUuc8hiKg6mwgtUJWg6rasJ
	 c3dYbGJb7wfKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEDBEB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808758877.32137.4753560303224564392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e88a5383cb76f35014c9c80f533d62602b3dcd4c59747e5f7d793ef04d16a95
Date: Fri, 30 Jun 2023 01:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688087588
