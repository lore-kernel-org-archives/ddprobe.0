Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C731A33D7
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CDEC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662741653;
	bh=La/JirnM/6P7pmMWZ4yujDPvKSlgoyh04fQbPbvGydY=;
	h=To:Subject:From:Date:From;
	b=dkfQrv2ZdPohKRZVrPEZSwbDG0lOuU8gOjEBKlk2oRK6N1VMCRCwl+hm3kEq3K72I
	 /S8G+D8KgZ12nZllGr3yfG/XPrJxzr9FjNnfm1Y0K+0Nu0R47Hx6jTb30ZfoIctIst
	 3lJhJBDgR/n6EsC+2alcSHVKEMM7eys4OrUp5oi98MiX06U63SMV1qzSqpC/IZIIwN
	 9kKB2Ci3HyIPZ2QGuKtZXyK4sWspkd8faylbnckkeT4R0AquySCmVoaQmPbXyjhYw4
	 tE6Bb8sh0gfCFI1uiYhoJTzurewDV3YVmnrcQusbT0i632yoD6TS/ks9VvQxXo0q/x
	 GIkLAFB4HWlUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BFDECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274165334.24053.10179301396068386022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5aad33e34f84d9598b814bfe0838d8678bc15971770911572af0817ab929a90
Date: Fri, 09 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662741653
