Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541C2134A2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB17CC433CB
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687349588;
	bh=l4BMczD5KWOp2M+0yYij1lYk9M6riuRRf3L2Hnd7btI=;
	h=To:Subject:From:Date:From;
	b=TVaPQzR7LL1sbXt5tVR6n0bHmGHkUFBfGfw3OC+z4Cx929lcndvvs9F0/EubbqT2V
	 M9yg+idsuXairP2A+yvkzKWcm3W/+7anXGVKqCJ6NYyEodsfQKv6dh55u2Hc2Gb5qO
	 4b7Q00W2N5XHPXRkLwkMi74u8SXkpCU6nVq1W7jl3MIOCaNGeqo0zwYAIF2rI4CotH
	 6O/BHhGs1EiBJ4uJJKHJxWb5irf2YzH0Q5ZgBYlsIMOCa5GJiuK/hUv2EqgZIHrJX9
	 sP7BzrnpVioDvQURWhkJXOR59aaER7b/E/RCohSMJw02py9eZAqvK7cM5hxxA4ucEA
	 box39cPZ9dHRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD797EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168734958869.19307.13936512503323688162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ce14c190929b2d725506f2126e7d94ea433506484bfaab6026f2d8ef9e4f20
Date: Wed, 21 Jun 2023 12:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687349588
