Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25C82589
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66600C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662981053;
	bh=fJ8CQ4UpoiYmae/u5wLwPI5JHNJfAa1gHH+sgvQXucM=;
	h=To:Subject:From:Date:From;
	b=KiKWt/Yogkj/UpTOm/5vbVf0VNJGB30FaXvpGa7WgjU0d8T2BLawflsGwVKU/pS0q
	 kGqb7sytiz9DyvW2tmhHo3VAYlHtBkeQFRqHNPSUvumXQ6f6GKr7X4/18blO4mRQO6
	 WpRSbsgsSnhA7c2vX/vj51sZP9pfT50CDvaYBC6iGAcq7Yy+Ia2dP7Z+AUtbTY0xzu
	 FmFx/2cbjnpVgzoWwr6oSM8zhTFgsO3R0pFW7vhX5A9AEWVZsCJum0wh404FwgTpf5
	 FpbklRcwgslm6g4p+As05p0eaiC+OhF56AynL0dXxn3X0XHYkkTEa1TPdpJ9u5ek1U
	 X1+dUM3kH28cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBBDECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166298105332.4616.8340634627865649813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b88ce6ffada806930f70195f5e6964a0ae3b0e334b49f89335436a19851101
Date: Mon, 12 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662981053
