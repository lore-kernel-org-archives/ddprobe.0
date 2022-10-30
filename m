Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD387B
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77FAEC433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667098854;
	bh=YU6lxtmdN8ntoI5OgZ8mFxyWGQaDHgqtNdy0hKoQyZA=;
	h=To:Subject:From:Date:From;
	b=aPtWSWc13bqEShYKb2OVFhzw2ojCSL0JNN0+eUsYsMrcp8usq4UrSSyy/TdJGfdH8
	 cYhdWUS/hVXZ2f1jaHp6gcqRRcIj48cqE6eFynkzzj6dwzz5xMe0cFrE3XTrZhc3R9
	 8v+qktchvnmFPbOxCTGiC/ZM+dS2+Hyl3ExfUU3BdiecqInuS9jVp5fZMLVOjXPApL
	 NyWARtKPa2feQVa0bjKJSd2nWFS8dH3QuufiAApwmRRiVRMdS1HCEziIFsNEISquqe
	 FJ5RSPfiZQCMt20da/8mEJWBQ2cb/WD98P7Mx7pEcfWVY6+B++oU0uTM+qgTuWMk1F
	 4qc5lc+Uw+p1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55017C433FE
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166709885434.20303.8936448069201818080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01f1a38b432174419016dde410f487ca638ea45877fc8ae05c14727735b4708
Date: Sun, 30 Oct 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667098854
