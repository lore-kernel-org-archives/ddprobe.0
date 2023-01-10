Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047E2290A
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1102C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673341287;
	bh=q021xnbfd3togvmy8uPW9YVwQYgJynIjBqydDxcPHWk=;
	h=To:Subject:From:Date:From;
	b=HqFMv/8AdZE3pemz+zwksfZNPgl0uiWaaPUKckSXNOcs/uD4Ly4xeo7Xbec3BEoxA
	 4Tdpuek4tz9BeQ/f908RuB8FtMNcC767PXo9ljSCIeWucX2VvxSwm3aVJyzPp33arh
	 G7O7sfUXDqfVKOq8KB061Iz5a3vlBTZeCsusrNX0Yof0lo4zSC2pdh7wxZcgIqrbAc
	 DWeTZLEKdgxBRygM5mdSy+UA6sW3ZvXQ4WSBqqSatOkJVFnn7CGVqkhT0yrV5Ovfqp
	 ZHCKuvBt33VsX5N8qBg5/aP/oPjpMnXrJ6bh+4Q6QUUZ4yCt1pEzESGevx3mLs9hxc
	 00+8id27Ak6bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 811FEC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334128751.26658.18408921367451556246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8035de9405508ed4653ec0ea3808308b4787e6e9eb6c67736399d3a1e9d812af
Date: Tue, 10 Jan 2023 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673341287
