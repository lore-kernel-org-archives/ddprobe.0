Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5162D2593
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB22C433CB
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687327388;
	bh=afZMkz0b2Pwjqb2MwHwZFLoH4MamOWItIjX4cCVG3Pk=;
	h=To:Subject:From:Date:From;
	b=obrsGeCl9cMMr/OBjoa7iABgvf2+4gybeBAsB1z1+SdNEesEXGaTKI79GxKiPnG+/
	 XjNVxeuU/6PFGxj6lvWyEWO7qg2QbZJQp9FA1Xjqn5UVHU7JBetmuhMIA3zrS9cx/M
	 m6XNk7xqg9Q0FdCjasqmrX4c01JOo1F2ukv8GHCC8nZT8MiY7E7lz9Y3BX3wx+oM/X
	 MQNA9PX6bBiMRbKdUQEmWCM6kVMTL+UqsbI4MZj26X8j+a9Fo16DeDky+62u1WU/Mk
	 0K5yIPWELmvIU7QBtK/HG+DQ+YzoErqVhcb9z8tlAoA5GfhJrO4+u1P47qNvHtMRZ9
	 Woai/u+vWLXJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD752EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 06:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168732738869.9069.13835213664263631690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08bd486a86d4f519bbe7750cda9686c9080437670f90a535922b9f6d9e0531b9
Date: Wed, 21 Jun 2023 06:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687327388
