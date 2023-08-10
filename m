Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1191E52C
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1C4C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691661188;
	bh=CU+DAkSiZKusbDKts1J3tMWm1I6Dj8bv9ZO7rkaSgKY=;
	h=To:Subject:From:Date:From;
	b=pdGhk1aOGhAF81HM0ODxGxnKGKmiaqyg+Cj/BsECCXSbGwMMhTScapDI5hDlVWd0T
	 zQjSxDR0TGDRW/nJ7XT5bOjRITIXKr63y2P/Sb3U8SH0DoLUd24WF/dxJnJa/H9+iX
	 kOqP//GY7tI5B4bIPVYB7b6HhnsYajG2pqgKxsvDCqUJkI95q/az2UjOYBVS1z/gG6
	 DwJ1p9lGOJWIMWtjnO0J+zuSs9Q25L5XywcUcMlUjW07588qfsA7d7fZ0FN4HLXuhZ
	 XJG0Pmytg0n37j0kwmpaQ4uUIncuS6Ixm4yu5DceZklmbKuLqGzdAQMijQdJ3C9q4z
	 jmglgbjiSnj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A14C001DB
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169166118868.15689.14128531821175140333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 809299d755c14e06a0024fb6fb457155fd91cd2c9e45b6e160be17f23f63e556
Date: Thu, 10 Aug 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691661188
