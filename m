Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59D981775D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A12C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687867988;
	bh=4yWR0A3zljAHeCHbAvFDg/aq6J8qINm66u+cjxQ/PXQ=;
	h=To:Subject:From:Date:From;
	b=L8+1ttuiqMZhdnhtTaYWR5v25Q1gytkz7Fb2E27SIjY2AWUoE7lcHjhIPGkPFM5EM
	 /z/gPP0kRt/j5YBPM6b3POAEZbHTrVXMVvvLC7VZTE8zxgDz9nkfXVSajmbP0kMBGF
	 4LVas6zjf67djXEZ5GhvEvYlvuCJ/ekONvNgvFahWRAmpHfN6Xn8VkmymjIWypgHj7
	 lZtLj8QfhFxuluJNTSOzpaabaiJvSvMgAwxGyl53t7BdwNFOdQUsCQLDilId2OTrqT
	 pE3VE5XPLxB0s/7K8swdgsmlSxRUw68INXAkPznKYjkAIw4k/oJCAn+Dd0rOqIsev4
	 nFqNf2hBixeHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71BAEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786798867.27502.16157887102220082092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839fea27513bed6ca00a913fa58456c7df409f4cb3888ca34c403d6e121deebd
Date: Tue, 27 Jun 2023 12:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687867988
