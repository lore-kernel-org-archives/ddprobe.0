Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5DC79FA
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768E5C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670966487;
	bh=eflfEKhudcD7L2xDqrwHIojd0Gzpw1DjJDo+aO6v2kI=;
	h=To:Subject:From:Date:From;
	b=XxHRoP4cT0nTFVmid+7OtanW4N6K7zLDwsLzWSzHnzhDcWH/RB4Kyq4dQg4pqLLwg
	 h/MZhk+ZRHpFgEf3lIvXw+mibBea/0oiAssTc4Mo0m9kAavQVFXfa9TzGW1JuCMrH1
	 Od4igdyDlqrEV3TRl6O3O/NS5Cq6w5Dmgl+cQ6mg1CUCP8WCH7UASN0irKtHfFLCPa
	 Cj1M9lRBgBVl3wbDVlqh/Ip3Zw5/Xd5zTEAN50qpIQsk9X1Btfc7aO0HlOW4JtgMWr
	 fBVYuCvPDcnpXVtXW2prJwgfxYt/7mYrgO9TgRqIWmN8zdrajJUS9DclTgdMfcFtYF
	 RrGqMJSxz1Krg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B63C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096648739.9738.3882510187728230256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0c570f4e04eef323ae2be620adaa30d4ce7585a0c785d6a7f3aae3ca54dbe9
Date: Tue, 13 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670966487
