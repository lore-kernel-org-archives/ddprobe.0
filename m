Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8303323C
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y24pW6eA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE51C433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698179296;
	bh=XBW8lwa5esHL6sqbo/pgsd3cFeWMMI5aB49oXmWGDKA=;
	h=To:Subject:From:Date:From;
	b=Y24pW6eAuq1XcoVyR64+Rit/hbykhJ0mMtooMjFUV4bcZuaacR7owImwOZ27CJSvE
	 TLHVzwWzclXD65q4l1jYog9BIbO0vSGXtbJFnWDpD69Z29A/5uWH/01+ocv+tS6ITt
	 wESZM91DnzdM7539ITYsWAIgtcjVLy3rNNq5Wey2/4fe+tqb/er7R5taHyKDLW8Nf0
	 +17p1juDhuym0/OZCe/74MjXeXRWoVn2fSK4kq+3BRBHougaD940iZkT53zCHnRxX7
	 5ISce5W+uuxFYnR5gD2voN9odJRwcmjPT2+cYHNX0J3qUmRSFWnVX81LROZwBHUksG
	 cvUmrLqBBtySA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 634AEC07545
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169817929639.3927.15327501195749185405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab6c43917a8d5e6b6bf0fc465ed6fa674f7916edb047661d3ecb6af78d12d03
Date: Tue, 24 Oct 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698179296
