Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88E2ED4
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A100C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665984053;
	bh=1b9faZYdCZ15o7jqNKZhr/ElkiiMz3CmkXZHZYU/Oqw=;
	h=To:Subject:From:Date:From;
	b=WQJ+8uCl/yaStfKaQw0mBzx5+Q3jvpKLBsb6VhZJmN/SsYfCRg/cgarjPqAeZomwR
	 BcHrwpwYLyAWGBHUfa5UV2U1uPDGSrWiPTd/DONC9iWbOmkLQ+rVKuOrgg6hLrjqRj
	 mhvh8OUcGDjxahLTwRgCI+9KK81xaffLHkPUac/Q4ER3yQOGNKVWjEE+yEdYjmbrPH
	 NcICkU6Z7t6EXStydyaEw6nZYFf+5S81oVAoj2lZX1VMEddATniJuWwOTzEImjmlVv
	 DY8/J7D/KyOMXg4TX/bc3C/apFPQ7S1NAFP6QGpp+/24dIK9xhxBQRKV2/onSC+XIj
	 F9rohAT/bMQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5441BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598405332.10865.14630383507706461943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6826cae36603bf9c1590aca85b6e6370851199e9a95dd4a1436c1506cb11df
Date: Mon, 17 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665984053
