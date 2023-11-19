Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F0019BAD
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIRRr0Tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FBEAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700437696;
	bh=PYG7ioj10rTyszmoXQHKLKywJOb7PFcvoVLzHuw0ahU=;
	h=To:Subject:From:Date:From;
	b=NIRRr0Tuk/YEvUDyRei1tEVDUdwcR7eGA0CjwbxnIjz57FrvgYnf+oNxmlxjMSim1
	 rsQPK/9Tmv8P45FhpnluMuYRowzpjo5YcJFY5f6VMkjTjT2wIWPYxDwCguBGRvUsy+
	 q8V+QYC/P/wrjaO7g7B7lOjhwV8TYPL6KtyZL1P9KeEiYoA9vmJlSA7jIusKerRbpx
	 j2pN5mTEI5SmA55LRHBJV584cxm4CHH+Z/TZacce7blYMDV40vDaLJZilwYnCwIOKf
	 JP8IdCQH5iFnhQEDttPm3cMB5C1qK86Z69f6z9bhhdJXA/kz3XU+9cFYhVycgL9LnE
	 cjFYN1VCywwhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F13C54FB9
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170043769638.3795.7461463287323342498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc2fd4abd41a759756bf1685f79dc4edb3c90e48da43c56a6bf0c0b63f68d96
Date: Sun, 19 Nov 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700437696
