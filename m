Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2F219A
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39B7C433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687235528;
	bh=ZWqFXJ1VRAVtEnsBQQFN4IT/LpkYYPCodNuDVaM2bs0=;
	h=To:Subject:From:Date:From;
	b=RNi/JpWbyTRDuQwEpklKS5e3X+t3cRfdbymy8AJZsFY9GbpSKA6b0/JbYVyvnYjwS
	 rxAtQg3OxGd+jms2lgYXnqNlMtZ/OrQMvmAubbxuS2UxIRGENrzU/JNg27Rh9C+m0Y
	 H806jh3TbjSpQT/5f//BKcMZA+HVLKDEkpQePXKlD/OM5V9HgmG4fJRWi6Y9s8FzEm
	 ahxomcP0hlA8LcaLIH7P8YHKOxk+Wgf9WHnHAlEux30K2oPFNhb8gumi2yJN5CziEC
	 NlKaU6LdnMksgaWsg7utyH7B4YAFueDjU3//+1yBVxlXYLlhM2FakEUZl3Nyl+UsUC
	 FST2ok2Y7CBcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B293EEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 04:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168723552872.17929.3977594043338477039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6e4dcdf1ba67a5be63e91f4ed49950fcb22dbb61bd6dd73f8e03acb0796b7f
Date: Tue, 20 Jun 2023 04:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687235528
