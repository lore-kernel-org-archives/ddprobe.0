Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0752F32
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 23:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAF1C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 23:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688253848;
	bh=4jy5heKF1PzTvP05uRO1MpvzMmSGU9l5dTj8AoQFuVE=;
	h=To:Subject:From:Date:From;
	b=Y5cZs15odQQ5qOFxviRdxtOMFkc/809vNL6J0QJZnh6LqbEP9njulCZQpQJk4CZ7G
	 a7B7+RtBsZ6g8NRKL1IEXQSB67XHx9RFVXTA8wjW8Zo7RMSSH2y/Brs+BLbF4tgC0p
	 /gGTYFHO+0fWsTHN04MA1/XwTzhofX6WGIAVWgdvJtWXiWbNN+lYNwd0Kko+hCF4ZQ
	 zjvaLUnFCsHWntC8Q5T25oWoYegnrkYGNpAlkMVgkHOrq2d5lXoVkws4tUH2Owm5LP
	 e3Jq1OZJdx9aloQOOvttejj1lMp6sxrLhaw5j9UIIKsSPU27GNSMtkAscsHnZcybZi
	 NPEoVSRyUvhpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41E3EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 23:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168825384870.26314.17136035384329498861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f398ae4e045558cb7157a856762c4c72974e2fb9ac2bfa55c7f473299aed280
Date: Sat, 01 Jul 2023 23:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688253848
