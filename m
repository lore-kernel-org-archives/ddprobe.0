Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E054717F8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85410C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672638087;
	bh=DIkacyQlHwPIDd6QuN/a8x806dH8p9CZHpr9FChzAPo=;
	h=To:Subject:From:Date:From;
	b=rL4+3UMGGNsfm8KVzbWGwtFXfVa4zogRzHddjI9ZmbYOWDl6xsufkF3+ew2XGgUrE
	 P46tO0MCkgWx+YazysLubZ2AF/zwcGereEikl4YwPWSRBikFxfEQ5rUbbM/Sd39w0s
	 irbsA4ibHoR0gq5ocF78XR2QrmT4/C9UhqNTK3MPMVJssBoa5ADTSTYkOR11iHAx90
	 f9gP1fAf3wPu5N2hqn0HqeVOzMKJ9Lz9gl2HSjVAenualcdRghp39kl1ejfTlGW2DH
	 x8NErTeFX+7LxLLB5AAL6KdCFM8epZJkclNirrXeiqDWtrOysGY3lIL+NzvAuyw/gF
	 0nwzXVTJzJPtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2E3C3DA7C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263808739.23865.13945102649458701294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcb3887294413d59a72afbbe9f9e60a4a94e7cd342fd2faa9de475a9349e7367
Date: Mon, 02 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672638087
