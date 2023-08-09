Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283EA17AB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 11:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF670C433C9
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 11:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691580788;
	bh=GL2L1aNZOqFAplFDG0NzT1PmGv8MU3xzpWrfh0a9sRI=;
	h=To:Subject:From:Date:From;
	b=VaPMY9d6t2bYbgyFLGUtJmxPNeRtSgBoaDMTveTTWXs0GJ1KtKa+sDgRcDZBB5LO4
	 HovKSYj+H2/d1Ag3ce6Crw/73h3mswWojWzacPD3qnaIi+aXHQHfqll7pOzp6w2eNZ
	 2hHMpYD4s4WcKEMT6O2f3gkVIzIsYn8jPDVRJshoGf5kx4rBqv3z5mnOS/JNtj6IQc
	 oLwbdNQ4yZQdU7P2uwNZhgyyXJiHL4NzBcdtdH0KYydpJLqtBMGGfe1HTimA+pTbUz
	 l6cXccU0yxU+PwVFMc0YeLlgueH3AV0OY6JmD25OikI9YQ0xRBhSG7dZ9Nn0VdHIht
	 DVISYJo4oNhRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2565C001B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 11:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169158078871.6659.11818009556005558044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15e1af85a3c5b4eb1747fb2e7cf197b03a4f2d9ea3de5305aad4b5185a0f4f4
Date: Wed, 09 Aug 2023 11:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691580788
