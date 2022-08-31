Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15C7620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC66C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661908853;
	bh=DxDFC+h1YZc0dhH+vvBHVsVGS+zHfCd5sBHgf3Icd00=;
	h=To:Subject:From:Date:From;
	b=h7sfxakwTl56bxFsIlV9jdSP8Xwfz4pfI/AUPrm6x3nuLIpry+8ye86BqOEJ1iE23
	 Iz/m6h3WI1vax2MCfz6xtz2rbfWxHByRFFnPn4Gd/aBbEFCOxGgLS9QqRvv1dH7yUn
	 vbhtVZcm4+PVDaHUVqRnpQqUhGvGrcjArSjZ8AryPialnRGZXzv5noHFfFAqLbYrff
	 x0s4HT76ykv+EaSb6zDbO4Pj1rnDpgg4GsrN+I+w1HuYi5Xf38udCNpbO6NxIS33GX
	 tjWzTGixPwnv+E5K/raq0y3xNVvICDVwQd9Ph7AcTADU3vFo2YiOSGYRvP7xsA9IJl
	 ozx9R/t3l5GQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52436ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166190885333.23787.4441955254218608561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cc86bd371090dd92d441380a12fc055a5dc714b8f9bf3d7ea5bf5136a1bf4de
Date: Wed, 31 Aug 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661908853
