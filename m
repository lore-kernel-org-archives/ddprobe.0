Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34947208DB
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6X9CKHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A511FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697834896;
	bh=QOzMeFK/x3pvfUCRKqINHGuwRx+zWVbkNyBBQHDlnYU=;
	h=To:Subject:From:Date:From;
	b=L6X9CKHIhd4gm/wWGkE1z9Vm6Y/78y783l3XT312w8vhUZ5wZqlfcMRFBazcJIYEy
	 AqqwKIVwWq739bNReBUSE8MoitnVjYGK5gBABqGK1trrpA1jb0pK302y3w0O11VVts
	 f87GnJyxEMGL8T21HjQ+Sl0Hw3TSKZ015DAhsX4UloLGHe7Yq4r2ne5Xr+W6l3S5Zl
	 frJY7H5aBg5v0Edkvf8cpBW0VJ+qkdsX1wci0pUT+NRKpaKm7Qsc0qWHSguZGdVfw9
	 nahi869p/1CpGVzS/H2H8cOL3yM0Or4szK6JqAYgr3xiZ/UIoq6LTYNkU78JgLr7L/
	 oKUh+Fee2Yzww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D9E5C0032E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169783489649.23418.15374836888877936913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd244bf5433b4b651a77a343e2054ab5135350367f3ef070320b53494cc93ec
Date: Fri, 20 Oct 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697834896
