Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558353FB0D
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 22:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ectAKsKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2B57C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 22:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697666892;
	bh=BGzPUJ3YGq/Ql2C5ELegMsNppvh5GmslZbq886t2Xag=;
	h=To:Subject:From:Date:From;
	b=ectAKsKGha3Ze4xIo5PW0GX58tmx7IVkl7TrfdwglO74jdicMaQBz7TCVgKCXX0E1
	 jRp0kCSS80WxCJEP9oBcNPGeTeBtr3cssbePk21khruyJbS+9HWZQx8zfOP84onCCv
	 Dk/MVNpyq4lACK5I38L7bJfZO3M0xhCSRzYtq5mqJs10Y+t1/xnt7MbswMSBLL7NpV
	 FhkjMJlpC6fFlmWwuzj8M/iWuC5zf0VY73TCu6ediBwD7TIeiC7Yv+O6RN5ts0L9MP
	 XDZxpMBxLL7l11e5xINbPSUAXlZ1RnH/bA3xrgwU+KFr8D3LBUdUi92U9+p/IWIQy8
	 rB48fOfcfj2yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B8ECDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 22:08:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169766689280.14238.7798842103120951942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e015925948db0d36e04a5d5008d525100ea8a09181bdb109584cc55acf7995c
Date: Wed, 18 Oct 2023 22:08:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697666892
