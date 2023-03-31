Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444BC1864
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 04:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF477C433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 04:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680238265;
	bh=BIVQWvYAvZvwFF8tZJTM45DPU0TDrUg9DNsNgvNaZ8k=;
	h=To:Subject:From:Date:From;
	b=WEzZVfXK85ydToC1AnpF/IJiR1FLS1Kz8HXHIgefOn1RcG5jG19fGcy9Hdj/UVcD6
	 dIUYozlIbE6Jo3zKUEvhOLj17ISegAQFYS7gG5jQucCaD8ToB2PQT1pcKffcMts790
	 Hu46IJawvhuB7A/DYrZ7b5j72/gcGZiJBvC8N2dzA9FDy6HNRx9N7F2J4llMLxXOPx
	 DFKv/REojIaeBozVLE8KMbh0GZ14PpaF1OqKxqQjr8IxNg9cXfKAi6Gg3ja4bxj/T6
	 fGT8kdpUmNivYgnd9gf2kkQe+YUq27IX6siHLDkNcknKyym6gQakoGmUBpMtVx1woA
	 Qap/fl4hdidMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38CAC6FD18
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 04:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168023826576.21703.9312641573022189918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055dd1af531f9b6e11a15c66f1ef2c39d50f61f9c0a7fb047052fab3c557a41f
Date: Fri, 31 Mar 2023 04:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680238265
