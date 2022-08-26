Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C6B29AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 10:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74673C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 10:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661509252;
	bh=dSyGQoZyJlKRqY+fnH4BxFhdelKFgqsbUS5tm+hB7bs=;
	h=To:Subject:From:Date:From;
	b=ZYO+FxWHt6d3jX+/J39zFNGh3AJqAf8A0wnpQLwJGgcpszcmV+MyNr+G22I76q3Ph
	 Lx4mqMeDAJDj0ZqZZXfZrLP8OsvDS7P4TcfrmoEf3nnq4mCOIqYqAB/+1g0SaeZf/w
	 I8KQITJRfXSVuF1MpC4o98ZNdKx7EJPzJuTipTyrT4AuAd7QS5zVkEagrNEbwwj6AI
	 r1FzRepB5eoD0wik2TUMshETwu4LxiaLSQEe4Aga6XQUMAm+PlxuCCdoWlLL+dsJFc
	 LMXY/9LAkwoycpyck4Slv9dl01IejWk82FM5hDko/bOk+CXrp74uZE9oUOggF1an0p
	 u3332vHEM39Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593ACECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 10:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150925235.8098.6501407071124609378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a059ad1c070b5d91bac981b4db8926d337f75adf227fbc50b74fe033c4bff364
Date: Fri, 26 Aug 2022 10:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661509252
