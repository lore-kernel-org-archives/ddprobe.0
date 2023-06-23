Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAFF191
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEED5C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687523588;
	bh=N56gvFLQvfcorCh2BH/xssSdD2iQ9v0N3gzg2Z0k1ts=;
	h=To:Subject:From:Date:From;
	b=O1HFyjJjehtglv6AcT1vd+rWPK92wkKv/Cu6Q6d/vKxrbNB2dXQTCZ5hMgBxcWIzT
	 OlzzMRlN9B0rwDFdBA+RfUTa/4650DsoM2R2qUQBwao6+HUNO5BEaYGKlKUIrE1f08
	 YAL71MR5I9e8nv5eIqBvpSQWpYF+EHvC2ZcxaTOVlR8Lga4rz8zCZ8GpIILTWHPrGG
	 krq+noqn7fEZlu+AupKX0tA72iojxwgadu1Q7zSYeCmZEatmApngv/47COxTVstz78
	 Hokd5k0nDL+7+cXpcURoNOPpZLm+FbvqM9QogW8oKJ7TXgy2rj9EGoyqbfdSzEHfu+
	 bFYzKDi1pI2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8655EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 12:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168752358874.19419.7967367338779360132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302444e00097010592857235c01bb1c98200f6e46fcf06fc14b4890e513b3305
Date: Fri, 23 Jun 2023 12:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687523588
