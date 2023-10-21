Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102CF1B275
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLsu4Fi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85851C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697903896;
	bh=6y9qyTPGhk6oXqSZ0memJK4S1PHxAH8T9tdwRlhpcDA=;
	h=To:Subject:From:Date:From;
	b=JLsu4Fi0evKjSExydf4+vhAj5YiOMdKSD5E+mR/gCxvkNCYiHZ8Yi52MWVVEfzjq3
	 UrToEeT4CY8kbySSId16qIvDEAPOMgrXK39OLL0/Ig8zQzmNVzZ/QxKHsAR6yxhMi3
	 rnZ/DL3jmjsKD1PZtycW68sd8z8sAfS1XpwCyMxhqHCWHnZhnfJCKpzy/Z3rqc8YPP
	 grlPj0G3whSDsPVfbF0B9aHVJ5zUNdeEmNLofPFBDjG9KORQGD6Qd/CHo5ELoXP0qJ
	 PXzYsPWxraVS3WjpDW2XCn2fdnVuh0o1cdkt9ALeLVz5x/uDQVPE/n0Ko43k/PIe5c
	 r8aI8OzatjIiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CC0C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169790389638.9495.6514359609365342160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce949ee2c2082a8a97f43d0f979577c64c27e7ed683b2c9f431e8c0a0bcf7446
Date: Sat, 21 Oct 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697903896
