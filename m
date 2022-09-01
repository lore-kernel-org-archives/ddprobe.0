Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC05EDA
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73143C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662071453;
	bh=RQhz9i4rrBcK8p8VUVh4FSecKRky4+T8ZRVCGL+EWYQ=;
	h=To:Subject:From:Date:From;
	b=e7AkM3yPr7n8sWqznjYRr6JZKk11ljWFaVduC+fSdJuRs7xVtzATWlBSwFcaSFFUp
	 4lRpwQcwsM/HboqIFnliy5Hiv1mGpB2bydoFHiRYGpzYQdxk9S2/v17mbUotyhlFpV
	 9j1PE4VNIk3LS0cjddFAO3JLYgowGO9TiqAJh7J5xVYfHyPJNsFQyYgKdTaLGDC6wl
	 gihqPvGrOPWFLJGx9kW2j/DjHm/L+C8NH9AKnj9sr8QqCdtqX229/kuX9Db3Pm+OxS
	 Y4EZxFXOwzY75FsnCV2s+6R094eNhJi8Xp2hNgYMreLLNksCkTkphS4d7fz5+NyvUZ
	 mPzxugYf2TNDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBC9ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166207145337.22156.2544769301441037314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b6a112a0707010aa95f8bab5ad11c555354e688da0cd3fc009938e85b2f67b
Date: Thu, 01 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662071453
