Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37309EC3
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 22:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6795C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 22:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678660625;
	bh=YJpzJHGx2+Na1hBVVka08Xwxt/3DmLgcmEcGUQPjTfo=;
	h=To:Subject:From:Date:From;
	b=BUcgb+jVYzskKwNxCzVCc8zz5XFOFmF8UpQgdu8PBm4BcHu23RiwhU0Ros1XPjcU/
	 DdvB2PNQ1GKO+VF6YBHEpz/dQR/5tVsxYnDF3BNac0aOVE/lVjJlUIRmt6Mc25D1SH
	 U5fxN7cUax8Dh9W7iUHmmIyJzekY97SipfNwXyqN6cm0+oK7X0IIIqPTbgFx8PW+rB
	 JPx7wHs00RDS8Jk3wrVORYi/sBWlFVcxl5UC5tVQ2me5Ya5yM6fB3JaTWSIodbyGG7
	 Rs+M1JPffYNSdJsXxq0EM+031XKxkkz3ATRaieluNuWbPEHDwxXYP+F1TH+BJhcWmi
	 smhPrB6SJc8HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DE5C6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 22:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167866062574.2095.15797422176984308415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c65646772c348ae6251b14be3d4737c71f87ff9c4eeeb73ce20bddf7ce75f8
Date: Sun, 12 Mar 2023 22:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678660625
