Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3CF2102
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E78BC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670505054;
	bh=Brvr2BrVtAi1ipzxiCr2lUO24DO2gjW3WShXm69dDY4=;
	h=To:Subject:From:Date:From;
	b=dKRHQ8xiEzC+QPuvfBT9RhDVCMD+sX1mujmqQ/Rf0nppUhg79fgHJchth5p5lkOBz
	 fZCJv3/N19wCdJ4n3KF7+YQmv+IzEDeyyjBYQHXJwoA6aIDBqb847l9s5qoaiRtJQr
	 tXVSeS0clYFRbZOQ4lf3DPiZN0bkGUGYsYSP/6xmlIxUyfoevmcMpiYVqUWM7cwXCJ
	 Kag64ACPYKmP/PEjcTzLuBunkFsJA77huv+ltH0Unm60UsyFc3GAvmCHkYSSgnCq5x
	 wsJIVBbH44UCT8W3Thnrd+tPQX+9/04nGuBslduccRpoV7KzJrvndbz9/WRFXtqjLW
	 wLDZjgVH7zRcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B87C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167050505435.25521.14819548216429244332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cafb094ce45773ffd8cfbd0bc063c96a150cf7965c7068b3d494e5f2647cfdd5
Date: Thu, 08 Dec 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670505054
