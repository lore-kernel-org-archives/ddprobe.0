Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4047665A
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 06:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3708C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 06:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676702705;
	bh=9e5pwJpt4Vv8JVCGM5z5hthRviObRU1E9DbvFsFC0jY=;
	h=To:Subject:From:Date:From;
	b=hzQhgTQVOsApPYzaDoAxJR9T8/mjSu4L8MxWWCLDkdEkEMVvbd60MfBeVItMtDDtw
	 g1LppxqO9NV1e7ndQhsquUl5rP1XyLk/jL6VoejTzlIduhvcKbv7TrhytAbwMVH4h9
	 Qk0cNKjRrNGEQRcF5venaXMjxs3Pfd8hHXPHw87dHYsuRYnRcHUHVjeSDqPjG/MhZQ
	 gJ4x6HGfvPF8pNDvzk3ubzvr342TDE6/Hu1xSy7X1NUKb4uOSE/U3pFBwM4s6qWJa3
	 S6jjiomaXtaAUPCy6QcksLE8GMaLWha6Oh4g3USIpxIlgFUQ3JDi6rc6JFKSkH1KCt
	 o8Lcc7+dUKTIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA7BC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 06:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167670270576.11545.15328435174331185009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de854b28adef6858165e20d874a0485f4f9bfcfde9e7adb08b0ed04fd2f6349c
Date: Sat, 18 Feb 2023 06:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676702705
