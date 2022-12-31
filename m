Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DD65CA7
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83BDAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672524087;
	bh=SXOx2zvY+tp66cp6+fRRtzT2bF4lwsUaGR07rQ18A+I=;
	h=To:Subject:From:Date:From;
	b=dslWumyX3dxk5GgKSomLYutLUrlEx5b6/GYYERKM84rSq/VENWmBZ+Sm2rJ/+DvT0
	 DQvI/HWGuxHLLrJywlMzfdMWKJVC/707mk1cjBQlwqljZlsXqWUuNyTYNzOodcBxwX
	 Bq0DdtUJBTke3PJ2JLYA9ZbI0zVbDT6Kr68k3vTu5O7m0AWteLwLM+FjnPBF/I2KtX
	 wTRlzwDfUtPnktuFuEf38o6aRd4Duy29lbCg2fVa+oTL9wTKzeMhQ6sZas6Ppt9Yt6
	 gVIHP7d34v5C5HbmXHguZsrhT25T/VVnuZtpsb63Mr+niz8LFtezlzDtsanmsnqEzs
	 kOXYE4tww9Rpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 669B6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167252408738.23666.9401524985224642009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5bf4dcd1dc1138766e2c7a63059bad85848045047cb53b4ed834e49062cde2
Date: Sat, 31 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672524087
