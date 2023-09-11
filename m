Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED79F4C8A
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 14:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17AEC433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694442848;
	bh=4VynOjaMHC/124iSI0SP+sjVl/lCXBza6d79Gd+egEI=;
	h=To:Subject:From:Date:From;
	b=ISVNwHwLjPoZDHSbQE+5kvd6biv3XIEHdZahzZ2BKIwiXrvnSDYWNN9i+Y0iFqi9w
	 fHIb8+K80qyypJDhlFEVxN/TUJMi9YM7dFHRQ89WkD2mvQyXmhUW+2VQaNrnSeZJKz
	 nLiEaPyGjtomPsZ9iU+r//1taK9l5VBR+2QKPqamgC60H4/o/SQTXN9Iv3CfetzI88
	 qcvgW2QU386JNFL88cZaDkeO+L0NIDeQ03tJWJYhz4AnYJ4tiZVWA7nwdiIjjYFeRQ
	 XRFQvZCiCyIvEayGLwHVosKQQcCpiCWXXT0xXJ92nVKkyvShalGtTFo7DZRHI/oH+8
	 zp+gqt903l4Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F49EE57DF
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 14:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169444284867.19290.14590208327911468423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ccad311a68df42640a0cdda6780037550a25fa73e5176300fb516e00d6b63d
Date: Mon, 11 Sep 2023 14:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694442848
