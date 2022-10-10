Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B4D5C80
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA6BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665429053;
	bh=GBB7lYSQ66b2z2d0+ehO+Rfna15sWClCWPEjrz2i/ZQ=;
	h=To:Subject:From:Date:From;
	b=mVQTzBqdcI1E7OIHO6b1LKgacU4PXt7XXtjzHwz792enoXmZ5Cq+U6dnJn6ZDJRlZ
	 bV7HjSsk7n48IVU3LiP4Qzsoc0Q4P4oUlzNcCWbOChwC9sgDtXh9hQjHjKrOi4YjuF
	 IC6XCVaU+FRbSNn8TBqXzWB7kxiqT9zJ+cY/p+teVNWf/M9JlOyyNUDH2/3O5OklCV
	 BGiAafP4cBTpmCC0NXlDms2JJqQ4lymhaSIonUxMpupHmAP2POW9gMVQMm8bKdnDvr
	 y+yFBRwYU/CryZzc2THUXOW5X1/LAXr4OxmwfC71JgWJ/efibAa5/k0vyca+eTu/Tm
	 YYQqhdLHGx/lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5245CC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542905332.2572.3726477887498428901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81916169ebb8a4003c4ffa54166bc891f480546e8fbecfb3f905848ea8b0174
Date: Mon, 10 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665429053
