Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F6317CE
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 04:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD61AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 04:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679544545;
	bh=VupKcm3rAZIzHxjxetST3OAIvhnhTeTw6SQWfIxsSdg=;
	h=To:Subject:From:Date:From;
	b=TKID3ZQ2Rws99b9PLlA4SRMcTVNU+c1cq0omJBnVxFEpcBkbnupmD6Fz6xKcKqctp
	 u+KcR9QlWXMQkUBoNC0AOf56inqPlCyaVB6h4EGgbObu7QSvSnJ0FsqS4nAiYsXb3s
	 KC4W7LaNlIolt8qoc/BmGLPP8+QvSz6BeRtkC7JVcgvS4b++bXbKk99rpnTDlGc4Hr
	 DcvMZ3B+i93eSX9lI9rEKrTMUXi9rCrOmHsBAmo+tUTzz75kUAelHH9WN+HHVJt0zu
	 9FU4gjRjrWpx0JIHAMciNMg8OblFv+jrgiXQP0U1grU/Sdk7lW4Co/Y7R4RQej1hvT
	 v4Jo4hLxopkgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9890C6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 04:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167954454575.27558.1403655094455341374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9013e93c747cc4bc7dc9a8319b1b2ebb69c0fecd31fe45cbb6c4f3153637c95f
Date: Thu, 23 Mar 2023 04:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679544545
