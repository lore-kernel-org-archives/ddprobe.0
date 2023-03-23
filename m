Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DE5320A
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 08:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA41C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 08:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679561345;
	bh=IN3IMNpNoFgj2CtJ4q14IyKf6L7KnzOTQHafX5cstkg=;
	h=To:Subject:From:Date:From;
	b=VTnjdU3xd7dyUPvNR5IpUuDNKDGH2bXs/iMZkWfuQAHIStpcVcWwOWwJoqm/xz3pt
	 PjqNIEj19T4Z2WLHBREVfA1AJa9At1qG4sNYsFZNpgLQuSt3l28/wm7hMvHLgVGjYC
	 qmbJMdWpNf+yocB3LuwCKz1wOC94MlgG8ZW9lotQo7JtPs0t2ylJN2c6IpRx1+0Pg8
	 QJ+qjlS5kKtEVZoBLXGC5/5+76fJ8EoUCGSc0+B2mCC3Xl1jhWlNibOQ1RtVHopavy
	 gdbiy91dhN+VRFAkBhi7DEPxoXXd+AKCj1jzRBZmQ9IQFymEGGwCOEojXWvyHde4MQ
	 eYgCAtB0I7Ycw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E81C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 08:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167956134573.11679.6060616043188202720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7051283f7e4ac4e66d595e49674896c2c973765193d5d5be29309ed851735593
Date: Thu, 23 Mar 2023 08:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679561345
