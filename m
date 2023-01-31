Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF2679CD
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 13:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 038D6C433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 13:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675171986;
	bh=EyX30VCm06YVCd/WlSbVjjZvUnj7rBPKSdKPinxZZNQ=;
	h=To:Subject:From:Date:From;
	b=r/CVULhLte5uCoyh7Z5gq6pPW3qhpVft3AxamqNT+/CRZ6pMmrez+F/68sLQtXXwd
	 3OV6guGCaOWTOyTv/owhfC4RMVqjcbBxjV8P6JP6Mu1uqX8pliwaCnGZ/5v5qlgWBE
	 jymkHj+fDlahwmBQLqXtcyRH144e7Vgufw8ZLJssxtE8ad/609B5igXtSVkKZqSED3
	 xwRm5smXwOLES3RFigui4EXEgXf6U6shgkB9JJnqdMRggDRwO+OYaI/OcVRglXo/It
	 krMlbMBfh6YR/62ORFFO3Zor+UJzd8C1s1an1M47U9OpMIloZccNnE2lg1JlujzPKt
	 YmrfzJ42OijNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD7BEC636CC
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 13:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167517198588.12479.16219485830624476140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a499b7a6fc83059e874160da21189cfc8593fb48560c183c7d33c4ce02fb07
Date: Tue, 31 Jan 2023 13:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675171985
