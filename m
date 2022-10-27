Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C677B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74228C433D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666904454;
	bh=OCJtartyuP5UFkvYBzjwqmORFKfu7fkUS1Crc7CLWWY=;
	h=To:Subject:From:Date:From;
	b=niqSfNwRkWSnxIzf1g5KjtxSNl3OTPUjfZM0SYUszX8U9fSU/vPat7laWQgzbdImn
	 mO1n/5ieDJ3Y4qK73nKxlqDleAoy9NiuXgVHtx5CXCWumg8wZnwcGXO4BlyEGM6s7u
	 nD6crEuQtBvby9+YayKCk3fgMW7vIoFMUtPrOOEXkRumSxuuWFbPcMq1GzkQdgg00s
	 xIlCwSWCmoE+egZc4RJwjN7a8s2qLjqCJVxw0tjQCx8irwwzxuyx6TBvA9rl1CmhCJ
	 vwCTIxg2CPVwQJ4BZpuLIkPo3eQBnjUsINFqSFDCBlLw1Y8PcCn1q2ncwKk9xQVW/p
	 KLruvhb8snwfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF60FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690445436.15111.13589751569189286098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5e79e6bbaed2329f90499d1957801919d3b10e16a3cf312fe2350e94fe2599
Date: Thu, 27 Oct 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666904454
