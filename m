Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED260361
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95689C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673487087;
	bh=hzyTyOxK31s5GL4wDoYdSA6F4DfNanRla4OmPppSLmw=;
	h=To:Subject:From:Date:From;
	b=kElQXEEqlLKb1W9c4NSCeI80W4w0ZZvBFGe9QRwo0yVKzYVGoCT/q9ET9vmalQ+Cy
	 MLS5Y5nPZxx8zNUsSblKwdiUL5aeH2num14GIR3xK2/mNn6Oy/5DESofxHghdV9KD9
	 HPufNslOdJ68rVmuRJxA7GQXzum/eQlaNQabBMWgszWIayKFnyOdtMcQSfwFZmTz2T
	 aSUGFM75tsf3O3PvVAoPEdeXR/xGoQgfTDv8f5wI134akBTbfTJyhv6pIGl95sqsl5
	 qNho7a4dbFW/GIeSlkvBBlKrgE+YDSKbJYxER7w3WX6Qs+tqYLg6gAzJU9G7FZV9tC
	 6BPICX7jyCN/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E6EC5479D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167348708746.10741.16909815140895672673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23039e64c6787c54157d8219aad1d3ade579eeb09ba2fde2f18acb6e0ce2b648
Date: Thu, 12 Jan 2023 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673487087
