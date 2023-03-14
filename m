Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327A433EC
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 11:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DF3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 11:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678793885;
	bh=JjYJKcODLDWMrpHTKNhYzAgQg2d9SxP9SpAKxsihT7U=;
	h=To:Subject:From:Date:From;
	b=LNiwi+iINVduqIDBoFfFc+7XQsQheep4z2cEhDO7crY/K7hmlRhR12hLz9Tipazjz
	 rDl+GYrQ5yCFaG32BOKjs/F/h0y9mF+zqyZnfd36syp0n6Scu+Gy542VOq/vsMyjnu
	 qzsa6tdfsa4wUy8iQQkFMvmct548YPSUb0th5lWY/496Z/Uxbs+uLsD7IUzKLB2tDy
	 gVMBSJsQLdLIvvsJSqotz9oIRRyFIHuxQF2PZNOhJZse6lh/yUr17yKiGbT3VJliT7
	 mTR3FhStNeEs+TUUDTBZfrYFcd2JmAnIBC5DE0qpccYFoxPORhPGMh6HpjDr+5KwCB
	 /XKTOYDqKJB5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6095C6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 11:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167879388573.6810.14994540146973034027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5841fb06c2a1682fa044d5743256adfb3773f24df36ab2aeae9893f56e63a0
Date: Tue, 14 Mar 2023 11:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678793885
