Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD37323C0
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7633EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661498452;
	bh=c3mBV38fZKjPqWSnKeLpAbdoy/z915IG9W6L3/Php/U=;
	h=To:Subject:From:Date:From;
	b=LadSjdOl+OlXJEJXZlJ+ZeACmRUA97kmWdfZmTCVVUD7ptktze6942h4haRctOrhY
	 Yo5Bol4Sr13t/dO8MdW5lSTuAqcDMnl1Zw8TQwiwfQ6XtJMJyOt6ZBTMuFjRzLiRai
	 BbW3zmi/c49CkEKNDaqmH2UUcDOwgpy7AL19myUhvOalOe98eLAqdFW4MUjVhH0CPe
	 ou0Er883AYnA43NMTOnwPm1B00W0l2s8fUqE3cG1xkEHYt9WY6LdLzUCsUi5idc7Sn
	 uU5FwCir4Fy+oeHvENObyS76XI8y+8DztkitxsRtvK2Md1wXoM0KaIL1A252Ln9sSu
	 /VtQXiK8FWaWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55428ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 07:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149845234.18405.8783776814908467643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f910aa9ada5541c7d0acc497d2900cf9e70d487de3ed8336d09cdef837182b7
Date: Fri, 26 Aug 2022 07:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661498452
