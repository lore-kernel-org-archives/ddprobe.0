Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E8D3212
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 18:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C1EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 18:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682016425;
	bh=wRNDe6Z8zWuAmo3VNKdh3hgpRd/0Xzjx7gv1CEDbIn4=;
	h=To:Subject:From:Date:From;
	b=GoJIPbNdOALwLn5j6htfBRSIQRCh1lKqfXqRSPuo6xYTn/z6dyhVSnFfYIyJBOnvK
	 Jqo+UtE5U+fBSXxr2QAGs3a7LntF4FSmmIQNiYpcwuzcB0R7185pDDnr6TaA4pbhhM
	 G9yYqPLhR06CgLZCZ1UiNfjczFnbpV36wm5trUqcWy3T5pKHyi/gyxKn2YAXQTeTlo
	 iBjnNcb4RRIh6R7wV+fdxDYdXNKLAGhZGvoRRa7nMsoe5N8BzRyT8nSBgBHjg7FQvB
	 53IioIjH9WPVVRH1MkO6/wNA2R7mDDCdzRUbC8N85GTMjiEQ+RGf2VXKTAsPLXmcj7
	 fLxB3K8aPngcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C970AC77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 18:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168201642581.32188.3401299603648959176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7e23487f2d08ab4c9eba3790e3072482a4d22574f9a3d6b4922e13ae3cd809
Date: Thu, 20 Apr 2023 18:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682016425
