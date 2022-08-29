Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6162F53
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707A2C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661798452;
	bh=MCv7GhyiLMj3/5TdOTZmTfgy90GPBeb+NMdZCorUC78=;
	h=To:Subject:From:Date:From;
	b=rIskHi0pkNBJBJ4Zw8+pHXW2aFzJ3Iwb87GJ2onbGZPG7AOkPWFNo8C/EIRAInr5J
	 jKj3tyCPzEJFkeZmO5t53IYsX5xsBV+rNfzvuad8I5geuhxnNdgLtjbeQHjWYHaTTa
	 TZ/NoHavpMIS0efMHwoJSPsaJMmF6N1m6Xr0Qri8EdFiYUI04mEFnkME+F0n7vZqX3
	 ZcK2Hv4TPjseixUxTocjFnP/7xVjRJpOhOVmieBUqo5NPIvm1J/sy3qYNAxtGV5b8f
	 5KfPsO1fnswk8GpJnhFYMeOSZuemUAkPqF8iqhXPZOh2cDVAqe1xgt/5rV9F0F1iFN
	 aku5dOPpKux0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AFFECAAA7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 18:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179845234.29344.4252437645174956424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605a0909648a3bbdcc614c7b3bbec635f8397e947eabdef9de2672c71f04c6b0
Date: Mon, 29 Aug 2022 18:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661798452
