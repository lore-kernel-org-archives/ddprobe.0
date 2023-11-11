Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150B01860
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+WrWi6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8278CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699670296;
	bh=sTR7k57v161w8SQccX8xZC/N4vbLpvDTsbNzzFVMgQg=;
	h=To:Subject:From:Date:From;
	b=Q+WrWi6UiEzHBer1W3rSLccT0JypZ/VZlkAxHUpeRvNmH2UtyeDlpw9rYWcYm5lnw
	 5C34wFk68NB5BnWe1acQuCPcu54orocmw8tNGkpGJ+eLvc2ZUjN1DBkDE+OOxBrLei
	 BHdZHTu6zK4Oi1rn+xuxP+DVcYmx21EzLiu8M2WgrC49OrgrwEm2Cu8ZRV6gsri0AM
	 YlO4e5nWV4uE2v3os35/3acaSVO9vgh44hnG0CGnusxguSYZHPuFJpYDUPccuujw+k
	 A6Hm3zIksY1Ju0qNFYONWC8VeU/xbnuEfuIXHDgEl2iDtqLuBqiS37hYX9Sw/XK0Xu
	 101eWE7oaDy2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D33C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169967029640.8228.17878285212511456516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6f5181f765cedecb8a00cfb227ebf1ef2e18a9bbd3bf86c8af8341b704a0ff
Date: Sat, 11 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699670296
