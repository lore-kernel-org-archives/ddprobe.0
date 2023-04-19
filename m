Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD152564
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 08:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07489C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 08:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681892646;
	bh=WUisZJXcKhE8q4wDYweMIxVaN6CleTaT1SHj4RCdDJM=;
	h=To:Subject:From:Date:From;
	b=f+29LEugIbmWsFWYnJsXCPry2irlLEE9+Im5RN/MDxLhKCKo/t9dUhAWpHQ4Mq3Ld
	 s0WPfwP8mAIQRKNZROr/plXt+y2O/y2aOgZ5x0zsj1B0JrywhAd+JE+Z/comY0efxv
	 yfx7OdVbSNE03QXKRjm4+orFSrVjtZKXiqyxAzsSiVzm0H+35eouEMfzx9Yx8yJyNZ
	 BAuRWt6/eq15Bvgx+hYKLVLkocQxsMyhARbmHJDkEsN3Qzgh1d/mhEClr0eZud2bAI
	 ylQT1zMVLY38S23RJpiWgH8PoFoGdCx0CqOiuuBMGfQ+k3yUoZOacH1TH1ATS9Hos5
	 k+HdokIvuASMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D38FDC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 08:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168189264585.25570.8218037116698895494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f30e5349447cb8d82235c9a17ef854299c62b83e6a59392f381cf996869b14
Date: Wed, 19 Apr 2023 08:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681892645
