Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572D521CC1
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 21:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDE78C433D2
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 21:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683753726;
	bh=R1IdNPdYLG5t1KENOmAVAnUhS27XMhSecJcgYVeuUrs=;
	h=To:Subject:From:Date:From;
	b=e6Qofhv4q5WC4JBWt/8Pa+CWreva9rJvQkNZnlHx+OLlEF/718Qcq8Z/+/gohFoJw
	 +q7oqCpmzE1WMXf1gdmKEyXPB1r/Oj9BWTqLnS1Usmqc8LYfR2BiK3RWwHltz4Rf2e
	 1MytpS+BV7v4JTEoqtbK7Nl0Tnh9xV8K/Ad/89ZuTX7iuA1SZpAh5Z/IKmvOyvK/t8
	 mOc7rq53AvdsfFAjV9YAQbAyYckdvcJkJ2XQa7j9PSL+iH0KnDdDtXnD0/xKHBRSRW
	 c6kLBccMwMabDBZWvwDu7i44fBFTB66cL27GlUfr9Ufj9frJmLXPjG2btyJF5iXyuD
	 mjWnevt9HgJMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA54EC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 21:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168375372581.18346.9985633004502244901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6f6dbc1c8ea279603538899cc359061c2c6c126dbd7f94761616cf79b829b9
Date: Wed, 10 May 2023 21:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683753725
