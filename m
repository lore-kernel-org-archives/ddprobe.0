Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3424310E5
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 01:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EFBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 01:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679360825;
	bh=PDzqIVrlFf1WQZF3Zt6wY2cUsWtwg58LXqZE69nk1AA=;
	h=To:Subject:From:Date:From;
	b=ZWCOSoI4VhrmTATLYi/G0Ss1bQ/B3ZkTS2WngZnKazThqyw8GCUMFAYHS5RcDRqhA
	 8CfFyvrgnhSBdPeuvjj0ji+THAXDTrA2c0P/VLhEjEPZiv29hsBsywKjtUuuTTWpM6
	 EvbEwhDbUGqC4CG8qBdQZO7cegcOtVbTTGDG59wAkAMWNRuskwpLBgabqFPkmTOVgi
	 2ciRKkpA1Lxdi2LZv6TpcXYWj+xkpvXKbA+Oiyptjm4H6TQR7iQfz1KW7kRmyrIQeY
	 YTJdEPuRvCzDURCRtWlOfg5ovyzbWmh+4m0VEVXGHeLOUYKwISFLqVx00PX1duHxUR
	 foLL3RW4mY0sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB146C6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 01:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167936082575.437.499132686058070510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef19284f49490d31dd0c62909910e3b753e91832b973c440a6954c9580a6319
Date: Tue, 21 Mar 2023 01:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679360825
