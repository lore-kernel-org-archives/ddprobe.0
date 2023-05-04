Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CD32F48
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 15:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9632C433EF
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 15:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683215645;
	bh=IMeTd+ucDdmXb4YcCPdy5r8KJ8hDeiYjDhRVxJUbAg8=;
	h=To:Subject:From:Date:From;
	b=AfAyAaLI+0zJ0LjUXxGzWFeXrIotPV8HTysSgQn8Ay0Zv9bMsLlcCXun+0Vu3CfZl
	 PtiiB79WFqD9txEsT7Nd47WaysRudCFjCCvrNEEPdZVRcrIM7knBnXsJSjg1iD4rvw
	 000CDueRiXDvU+PrTcaCcn46fn1oX4IM1I3796zecUXXtJPNoWW5KoSbSBUtJyhwL8
	 BA0/VNkgwY16YMn+kX5q7wnZrJGucvedbsuiM2QG0Dgyj52lGZHkmchnldAqron8br
	 HKZ5z9rRlhfZVWntUUsE1pnL9rVUOiBTSwCZYPfHrP/CT1bIxnMLX7p2DiyQlunvLa
	 m/ufn9TOnMxQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD2CC77B78
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 15:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168321564576.19050.61252143944705624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95be23d9df201e2477c0bfb9e157805dec4802781e39d2242714235de5527e5
Date: Thu, 04 May 2023 15:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683215645
