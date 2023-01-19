Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9E87485
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F370C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674139887;
	bh=3XkhCGqqVkzozdyYXAngGymMZctwJ3OsLovB+7TnSgk=;
	h=To:Subject:From:Date:From;
	b=U5zPC5POYHJO/pELcFW5lJnMjRl7IgeNQJdzDl707kPVlbxI1ukzzttr0SYRt9RuO
	 gDIW8gUTXWDxnxe2jbEk2lNmyXIGCGyXOZ7Y8mfYLtYiGyIYwQ/Y5KWIn4eTNYxhic
	 K/AsFbcrCgaZMDacbKvwWY9renYe403+tWjQ8d5a+ryJRGB4Nra5vriUIJSwPV1zz3
	 PSxSJPHdfDm6mOFOW2msrDMLUvRYKO+FBklFupo7HK9OT5ZsKHQlug/rMkTRtH18Vp
	 BRmFJoXpzlidm+GqirtEFX0pnT4fW9s0Zgm9rYTWHwLNqrgJxmaynZiPgIwoQR8KRu
	 pseOsXMKprwHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85391C004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167413988753.4412.639330882169673260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2e845907bb6faaef98894813c6af275eb99cf1b15af9e25e5c31d6aa0f20503
Date: Thu, 19 Jan 2023 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674139887
