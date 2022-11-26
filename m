Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D13ED23A2
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78ADFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669482654;
	bh=vbCVBcxcLtI1YxLO5eQvnuX+4CeDTdEXDoKN7V/iwVE=;
	h=To:Subject:From:Date:From;
	b=uivPI5NjJz1y4GEjk1i40nSqoebdaYaVpSuO5t+1t6VN7533/Iivvhx9yLIbJGgFJ
	 txEj/ew/vxCvHxif7jN0VPcCJvzIzGJ3g09Dktx1WPAbPNUG4+CO/LCt86+GDn0ST2
	 8OsQNFD03oJsRwnAEAbV/HVZQAvQHvJUa8E2hDed6nXVjDdBGDywTSRhDTYQ6VCN+V
	 E6aJxbl/WHLvqdXFbwIm8RgyIfsX5oJnhqVG4jnnUcDm9dfMPddlNqR9NbHOhLwRxO
	 b/maOslZHtNAMR+PHWzl6y5GYyZwdQLqFHZ/hoRqvcDVvRj/rfZqcuxrmN/enz4rT6
	 kppeqyAaDMoAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54094C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948265433.15683.12302890071859661690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f8be4de5406b2ac2d69943fd35072fb7c1b6f87dddff8873eafd0cfda2a0f6
Date: Sat, 26 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669482654
