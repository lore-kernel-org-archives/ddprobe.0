Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B445E4423
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E16CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663185653;
	bh=GRmVdhbgAaCYwcfMLcYrlyOd4Kbt5z6eyBm0W51XRNA=;
	h=To:Subject:From:Date:From;
	b=KVxHnevOgYsRXuoGAjdD6WNYEVDzgLIzbbOh3cX/ifgMgtUVVipFF2G/Xq9eNXLDi
	 gk65M8jaH48d536be0RnJvo8MfyihwAgrWqDp/H4HyGp5EouBuAUIHVBsOV8AlT7pI
	 ajn+8sfhgQp473cPv7Pg2UbU9P0xomkfDr2WheeZJ9kDw2BcnnrKTblPWl3ABbt3hk
	 ZYkvqRqExa8Pk8fZSnKrndhlAEVGJAJzP8keGInhuaZmX8KKlXShznUeBtTahFwVk0
	 8CXWnACUQ5rBDSDjTq1oSCtU0dmoMnBVkXC6DR1GrOP24AQSWc1cgiQHIVYQMMFk2z
	 OSm77LmgbH1HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54215C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166318565333.15416.755313380946439763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 528dd03de8c4c5480c543429b37f3767970f23f211c92bfac7750e180d566b75
Date: Wed, 14 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663185653
