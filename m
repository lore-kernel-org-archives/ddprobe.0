Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6603A10F6
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 05:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB85AC433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 05:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685682965;
	bh=LhbIJdIH6GBZphZUSIVCoDgPUWVuGLrv1TuMrh+qGcM=;
	h=To:Subject:From:Date:From;
	b=lCvAWHc/1LmHIAtoUL0mhBz6D4F7kzYLeihJC+eYP+wd8/bGLqZ0v7Knd/uuN5SZj
	 5pJx7UIeylpSjS740UPXPVoLqnVoR7q1B+AtNGr+xKtqX//uumoiNmUc+yymSjsR75
	 F0wOkP2wgMOgWaz/IOYznahw3+HrJeYCSGrT7cydZLaybfAeFd2a3OlIom+khHVTp5
	 ztdW38Io0aHWGVT1/JekbWKhkXyTRwdG+3KYoXEzyj3yiDAdjHUEKIXnvGW0wbaMWU
	 ZpdPkLodh1RQ6N59wiaD8iUg8YqQK1+F4GfVWLXfgghq+x76s+ZsEb6M5cGyV9XX+p
	 hNRojVgQCBGOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6C2C7EE2A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 05:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168568296574.17511.12188684027346938948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7346409b7f553105c02d3731cbf083d665e555064d3f8eccf15a44bc034796b6
Date: Fri, 02 Jun 2023 05:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685682965
