Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFCF7C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 18:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2F1CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 18:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681495385;
	bh=RDNiABdMg1SmyOxVc/oaK3gqjcMNalEtfx84h5+17Gw=;
	h=To:Subject:From:Date:From;
	b=SccNbeewN7tfSL3BbUPwZJfJXAlk3bexqRQWBCx1C772Xtl+qtFCaAknKrHp+3Cun
	 aCV3Sytw7o79hopDS5Q7h0OfcvMOUZ/S3tTIchQHWsjXahr7oBWIircL0wt55X5cUY
	 UwNu6GhS7fEx2Oy9WQP5s1U8uR75/MVzGYGw7FYiXmnB9VPvk06wBn4CYB4/uuC0PO
	 9hSOD4lX5cf9CHGfDpiwvOMgPcs5FyYudu9HtqUiyHNSsJfxYIs3DekVSUQ/+OpvjC
	 4MSJ8o+UISxLxdLU428upko1PnCz1122L7rNag4iyZg+ABYtcl6ZMllL/tHMuWGBSq
	 khrdottBWsFMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C601DC77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 18:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168149538579.23046.17664098227411015656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e9fa62097eca47046f3b44e042977c754f8f4ea96f1136a89bcd6ee1fead32
Date: Fri, 14 Apr 2023 18:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681495385
