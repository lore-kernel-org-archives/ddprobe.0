Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D9919A
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88826C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671806487;
	bh=eCiBPBrpkh4E+7lWJKg4aZebxDQFY5IGvujlxil1mzk=;
	h=To:Subject:From:Date:From;
	b=h2UQziKzJ7FprNqi+gI9bLXmGuiN4y+ZF73QkZoxPUHd9iER/m/4plgrgEXPcpLoh
	 9I1/Kl1/YK4VjcsggXMYOv8E7rTUg3VQzB9BuAmR7ePRTs67ag7F2CXN6BpZgwkSbS
	 mgl1Lg6L9IJd9TOLsGy4jFqGCQZiFx4Z0cZbeI5icej5c19cbxx3Pj/2x9z9D424D6
	 xaW+S6mQDAvJo98u8FxGPFbJi4RWmfV4XKy3Z2DnsktsZ0Ay1xKlvSV25bR20q1VqY
	 VTNY+xjew34ITL7A+7sTId01EPfdjYtmgk9lm6E9gJNBYgyDwf6O7/4t21pz/UMmu0
	 q/0gX1PffrvMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68324C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180648741.25265.2881306559276853654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc259870359b9acd1dff91ba83b4f02a922ece7f54cafbb654593dce926cb2b
Date: Fri, 23 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671806487
