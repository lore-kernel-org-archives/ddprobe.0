Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7286780F
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 03:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFADC433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 03:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691378588;
	bh=txRP2XjioS5VhbluAt05o9qJEMVqiL6yo7xUL9MlYrU=;
	h=To:Subject:From:Date:From;
	b=mP0IoiDf8V5nX0V2+UZgLfX9mVvefY/gJdZD4rMpb3H76vZzQ9MAw3q5k2IvyO4je
	 GZe1vtwCz8QZGjyY455KyFhqhNDYUmEQWmsUsv0bExdxVN8DfY6Ir5O/32hIUEpr1t
	 2yU005C8pXoNQrqqrDDAf6I9pYo+M8j6sbTrxTyMJDa+ehYJx311b/iWmYttmLodDh
	 hgPx9wacUOSDrqz6m+Lm7sxwwqVDucUP6HLfNC4OfljqWvaFi7wjJFeNWi3Pj0sEdr
	 7WBkS5LXisE+YXgr24ui1AQ62r79P8e2KBAID85wR+nL+QkHz5+aTF3zAwrYu7/yzU
	 RPlSNchEgvGZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B82C0015E
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 03:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169137858871.23728.11541857046473921111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b7edf931c7db8320715ed27b48adb6c68d19aa7eba60672e2f7ac05fe1de2b
Date: Mon, 07 Aug 2023 03:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691378588
