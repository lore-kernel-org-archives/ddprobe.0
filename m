Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C938C468F
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72ED8C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665158453;
	bh=RRWOfhAzv/vEN5rF3aD+5A6BxXhFoY0kHvPO9JFDCJY=;
	h=To:Subject:From:Date:From;
	b=szzg7O7yf7cJl7GiKRyYVY0GchL9UykD1EVWhm5r5tihPamhjmYNmy9FKmQeef8y3
	 Aa0VyFelgIX2OAbxhRRFWXBDbqtuwj9OkZjvVMkTEFXH1JMbmhWH5vL5pQlGcCudVr
	 9r3w4AdGwpTFt5yLnEXEaIYhFIDdZVV+pMFKlHIf6Xo5KsIVC06Y1bP1r0+FppxLqz
	 uLJnhKaCx5Fq86iABXmP+gQ8YQShlpkxScnNab0l/rTaWdB2mJjLkBa0BGpUpcFlUt
	 +d5LIg9USvTRmXyZ72Gq34yCBjz3wB5GDSJ9JHTwEgEGQ6ymbK10dNff22QjfxGY1n
	 qHzX8ISyMS0hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DC9C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166515845334.4368.8184605667821351523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7063a7c85b77ea41dc94c8e62e016bafb6432aca93adb900f71f9564fbd1489
Date: Fri, 07 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665158453
