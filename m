Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89057C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 660C9C433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661559052;
	bh=e96eQDGJpNzydRyJJ15l9N5wTE+j2gaIOpPMNxP3L9E=;
	h=To:Subject:From:Date:From;
	b=QC8JLN/5T2tj4ktR2KTCciZ9TsXhh4u286TEfCOCG91FSDuEfTFM8lJe6nI4zyjvK
	 7IoYcCLQCF878vvlUcauL9gIUGkCpiRFDU6URkOQfWSWulGwWAiFXYrzELexQaIokO
	 lMqxaNiE26yuqGI5AplYq8nXvLhRXJcytEGIjmuTTV8rTRKiHzfVaaYPW7IP9fAETo
	 NApyMlP5ugrfRCqh5hpgKEG9bq/nJOFFAjOn8ZGnOjhcU7admKC2Pg0Q8104mJBoFc
	 6DsXj65154KkCzJvENbpofYoOOorsdw44UuFFcVkwi2jB+QSNLVvxsDLzwP8hDVofp
	 zeLVNBYLK1SlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515FEECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 00:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155905232.2092.11897704613322020091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e976cd68ecd09a7f18dcafedeb8fb6889910be2ccb330b2ab4c9c13e255c259
Date: Sat, 27 Aug 2022 00:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661559052
