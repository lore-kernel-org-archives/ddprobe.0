Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D047A7E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E483C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663552253;
	bh=8cm0I2yo4jrCs20kpi4Ohp+rj9sftzgbHMW0NH0792w=;
	h=To:Subject:From:Date:From;
	b=Tv22rPcpJb9NQW+lU1FzQpvev/Xbp9CEveRwMO3R247pvj0/lIz9MPHVBOzdomTM+
	 LXuhKYBgfeAIwnFgYrGg+zft2G2XPD4u+B+3Nk8mQLmURN6TfpXnVQaBeRunumI+Lf
	 bYnEnWxrxbwhk0te0SSE02svstk6N8pl/Z6JIMtdizlsjLgOxi5az8cN9cxq5ECVW9
	 dzM4dDGmSnxodpiNvLrAMky6mFaOza6q/kGjc3173bGY9yl0hlg3kfw3YbJGeBv3Wh
	 EQpUNqT8ci4oNsDtz5K4UJkSqMomIItydGUILy86JuwmbkqjuThgwbizUut6CU7vdm
	 2elPP1ronVGJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54EBFC54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166355225334.31495.32078930166701822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead2248d7ea5be139e204ba64fd06cc8202713fd3851bd030ac16b3269593246
Date: Mon, 19 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663552253
