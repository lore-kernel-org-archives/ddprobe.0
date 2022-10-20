Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1EC7B
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A22CC433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666302653;
	bh=GfSn2ScuiHnPMUnOe8JXInDLIZ7K3dzUg1KClVdXIOk=;
	h=To:Subject:From:Date:From;
	b=PYKec7jdQJR/Hb8y3v7SJEEgmPhwrEjF0P7+I75V1nlhZxMtEwlqVV4lDvqgnNSqv
	 oMzLCAuvOzEr+ZNg4PjtZDIYyB46pq2M339+uPgc81crjh2xUCjMZSasSnkm6zmN27
	 J3a8DgKTbAoZ2jYLRoYIqEnD+CLphrL3fXOPzDwWpLjgLI1WbdrA7Imx5LHXsqwigO
	 ovCh5Re9oQp5WlD/YmFWXTvKphLX42agF+IITyT4ISYbZpeUx174hSOauhtjFzsEM7
	 9KORLBxRU2xSZM0wM3nG24hqCxb12IpC3mm1sVfnOt6c9f0Vo+3Y+bSjb1QmRfigIw
	 x1ISaMc3TKBlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5AFC43217
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166630265331.8446.4045724850608208428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeff03348502629bb954e13e9952013517c1aae95adaf644ebd8210e080db261
Date: Thu, 20 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666302653
