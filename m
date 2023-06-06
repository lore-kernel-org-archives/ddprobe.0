Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2DB125CC
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 19:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7E7C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 19:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686079325;
	bh=q05Ae4oi81rVBIeT/59NupebZEvHSh4QjJJMHTnAaN0=;
	h=To:Subject:From:Date:From;
	b=mjNQvycGFHpBx/K2rq0vqLcnB1yQGIPbAQhySEYfghG+RZ8f6cQyF9WSVUV3wAw/L
	 I05PAlEP9rCbqWRPtEJPYnvsLOLtF5ARzwQQtWmrC8MrsLHf0VEPAWLMvNSWxxVN32
	 IiRRGr0P8tFOrWzsSLk3JV4iRh8uyzQ1lvgO6Ie58Ih2SbltJGDnuDdIGkap0P5qn5
	 jXK57R2A4m4G16iLLMFcHkbMgAy/udKn3NQ/lpOy/wRtdndonIUVCer6hV8jHqJJYb
	 nRgNjfTMh6BcUpQqk18V24nKkofH9gd+MMnGtINkNYS6lAJxOlpB9gC5cR4d6Ftlep
	 Q5/hKNFEMrcyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAEC9C77B73
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 19:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168607932575.302.5801937897447947728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee7ed2161d28b3008d26f7ae13ed5f81ee3297a5bbe0bccc41b9ed50c2d1b98
Date: Tue, 06 Jun 2023 19:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686079325
