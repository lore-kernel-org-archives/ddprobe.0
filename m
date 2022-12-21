Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AB81859
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801E4C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671648087;
	bh=4BcbC0V8WAWL60oMqhuNp4KQYlGzREZ2BFwBoIFJJcA=;
	h=To:Subject:From:Date:From;
	b=VBXL1DOD3NpweaO0Oo6s8LHy/AWf3Lz5OuI70T84O5N+XNgNyyA/zoiFMqYNCWg5v
	 HbKVMMc6AmmIninIBhlFZsFm+eU4n2cjRxiwU9CzvBZMENIHjmoosmTbaud9HO4VJe
	 bUl3YlHJ153MjIqlLom3qzrtsXy641eLpJ0OixyEgPhMjRg1KdM8riZ8hAYdNJrB5S
	 5vjDV/GOeKTs1IQqMDWLyu9R1qZm/Nvrai+08qJrLj7Fac+maBVssFmSbcugSwbi/O
	 9I+2JxsgNuco+Rpkvlju4Xd+jI2GfvxSbDLtIgiQxAbR/UHZByri/uUfohucs8gA5a
	 qF2YX/pikZh1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6663EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167164808741.9186.11480632703912664351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b704bc3c2acb0fbb253ffd4fc38933f6dd361ccb6824a724ec826b0a1184d09b
Date: Wed, 21 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671648087
