Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A8123404
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 11:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E231AC433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 11:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685619365;
	bh=K8kW3FIQga/V/zHtlXCnrdv1sGfgt8pjNiQ3X745OLU=;
	h=To:Subject:From:Date:From;
	b=aw6cuP7t4x25zQ3VDHvDOjuY7yLKK53Z2fIA2lbaRzJR4s53c53GXGnmJvY+gN6Xk
	 jQwHN6UvH0ysjNL0rThol8RnxbaUOZNvVI1I6h+vB1sHcYQ3wFIxNUugtGqwOOphXd
	 5lwbch5W+TPrIsSZUSm/tEDo+PXrbYH9LMTkH88aitcSZHRA9UOEslnqdnbu+l8RIa
	 h4hKq3BwzMYyFn/oHCOUxWoNo9A8s3P+40O7rvFci7nWHEhSQp93Bxq1MsFWGAatTr
	 unjczxI1jAOVHIyAk3GR7ZC2f3KjQALJscc/rfDy1KLRTSzXw5v83LLXLfcvXE1x1P
	 99MLNkcLcplGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE5CC77B7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 11:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168561936577.11069.13401719329709224027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aacf6e58fa17b6799715836ea4d077d2dbb4bae5154b6fdc27b65db97fd1c70
Date: Thu, 01 Jun 2023 11:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685619365
