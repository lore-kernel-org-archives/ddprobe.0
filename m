Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771FF20B1B
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 17:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C4BC433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 17:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695491708;
	bh=zhXZsBP93EcITM0kfisoDbtd87hA+Yd8nVdQYwGjfjI=;
	h=To:Subject:From:Date:From;
	b=JQV2SKIix0FHcNqBB3/aKYL5kPSN19E7SEiul1s6G7OeyAAbUKR/iQlNlzhqT1rfH
	 rw8kIj8y/yp6KpiQoKY4dXycT8HU+Wp38dDPWSjyEVOoqpcF7MLHJQDZYgvVs1iW19
	 FjOVHFsv1yNksdArByHlT2xfKtXanYjcf6c81SH7LIvzyJprEradDn+229aTFBeHYY
	 tK0c0DgmoGaimIe94QIbBAc3r2kbbj3gnw5uaRZgczRs5m5HhANLtRqPyw/b6YtGYx
	 qxVpPEqyH3mB8k5JJAjSZCYvHHEDnwsRHd7JEoN/gFXT3TDydotlpeUJ2NGqxbXIRL
	 f/C08lDT28IFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B208ACE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 17:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169549170870.14252.2883396108681363531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6cc5123e22f050cf2afab151e4c6e41ad05ab31c8a505d376fab8084af7543
Date: Sat, 23 Sep 2023 17:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695491708
