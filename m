Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B983B17C2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAA2C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661734252;
	bh=XUW+X+WbkfDCmHHghGLlmjjaJ9Ab9eOj16T6tju85aU=;
	h=To:Subject:From:Date:From;
	b=ggF7EnLLPCLnDuOI7D/cA1Ju2HDukqV5CkZ+Y4/rehGu9Pv1U0ZXwiImdKugpziDw
	 vQ1V3JjCiqpoi9p6lykQu1oB54Ouoh2yY7LxRxAiR379zrYoldhqfH3pKCiqpOLuBY
	 vQ8hFmTVJHhmMLNn2sI9TM4vZUL+a1KDnYw01igfygY8CCBLI5Uk0tGoEbnqDOPkm0
	 3n9LjoEn8bdfepd2iiVJbejQvWW0d5m+iqNZTeLg+wsRzHxpvtZcZvXhyyR7pMnKRK
	 ffJciw3GZSncdqYfiabgpI4duIyh+TvILuuzi4uEzReLJf1gzdXg9RmC+nyo9uueYv
	 RmEWeNVhMnlZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5331DECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 00:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166173425231.7943.13734843216453867289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b82031d462940a7b304f84b69a8497af8ad8061394c33c95d3b5e136e736830
Date: Mon, 29 Aug 2022 00:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661734252
