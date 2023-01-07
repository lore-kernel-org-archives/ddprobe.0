Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDD8257A
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97410C433F0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673112687;
	bh=dILdo1We+gsHPW43EQNlQpmUqpJbT5eHlYyBI4wUpYg=;
	h=To:Subject:From:Date:From;
	b=Kzfru+TC8DZ0VyrUcH7/dDj7p+Ui3c+p0YREB+HvMfxVDUnfDO4jCFxMCPUTD/ReZ
	 99xB+lmZiUnwtaAFjw16V0HVc4QUE47O2/QDHgQM9akhficGDurvmvi08TmBkhzXmN
	 gqZ6FefE4kcCFQQQafMOQyxpZP1QllpsZQONpwACPS0teAPBG/fVXcvJIa+khLyftk
	 PK8zsZv2Kg9Nh7ZW7p4wrteogq2icshWUPIbHsTvSNfxZY7YHRStMfB9VDOLchlc2X
	 /5AB/UfYlGFe93lAwMsT4mw/cJFYv+KiddNeDUexDzXShVq4rvRLpLI9S4xNbFmQOV
	 8pQ/s6EQRIUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74AC0C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311268746.30954.17323239647418088248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ece7ad4be6f7f1ee2acb9da8b1a0fcb147b04c82b65b4df24dbf6ed45dfe7f
Date: Sat, 07 Jan 2023 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673112687
