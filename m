Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D1E134C6
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 18:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B9CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 18:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685211545;
	bh=iUyvVNQyEfnwH0zbzfw9/R8A/SW1njLmdg+hAudtNG8=;
	h=To:Subject:From:Date:From;
	b=GG4Zhqb8NUbR9neZxs/+KJSFAiIXbNL/VdxDKoybXBHLd/k4bv4YzJtu+778D9Iuk
	 U3LZw+74sqcjESwMa/W1UmF6cZ3ekMuBn9hHP7leGgDO/tCH8IkyNdNTmugtP5EKVy
	 qOUKY5I+V3tYQ8Ar3NAWYggNiOYeN+RjLMGpxBbVeYD4zKex3i0OGVn8BxGhzJhG5L
	 5OyUw4OVBi3iAFzrAclDotZj2AioJ80a1UGMqPbOrBPQzYU4cyD+GCHnqVHr/hT/CV
	 ZnRLvCSdD8tSZdpmc3kRnn9txpgzW5Dm3iElfdAYlVGoHZxHcSNIkfwZn2GdSFzw3D
	 M0SJgYYqZw0LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CDEC77B7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 18:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168521154577.14734.5192156526721751172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712c4e89d849ea22c1a187855a163028ffc3bac47f844c116ae311d6189c5d41
Date: Sat, 27 May 2023 18:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685211545
