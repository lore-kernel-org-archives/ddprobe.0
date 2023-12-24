Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0992CEBC
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4+CAop9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 823CCC433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703395096;
	bh=Ivm+MeOFp+/XxRsSvwFxZSaaWMBi0MebVgfzbjXhyys=;
	h=To:Subject:From:Date:From;
	b=Y4+CAop9JUXzfCx15QDjohH4J5u/7t9Pl3aT8Zh1clij04p7Mfta5RgjNry4UF19u
	 +QHU+mVsUag7HTbTIm6dlRmdyPL9ysTVJfUkW09iteh5ADUcFoyI5eLAb7JYxGpbjj
	 Msw+8JJkVkz8dL5j33Ql7tgVbVowE39wJqo+aAXH1FeAg8xBQFGt5M+feHel95O3q1
	 P39YOmIQ7IL4sCA/xs72zssO9MyUteG45sGhr7gE12lBG3S+drS2IvxuDZ4fyQUPTm
	 zvYJYGL4bxMPMqFn8W8dZjJWtRpUeEcaPMpYmH7lZNcWlX9Fg4Blh9k2G5fd118DWp
	 aMLNEATlynCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6374DC46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170339509637.12963.5968562664237548437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30185f8be479a7029f6a91d84c13b5943893c1f9ceb6c79f95c57d93740e18d8
Date: Sun, 24 Dec 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703395096
