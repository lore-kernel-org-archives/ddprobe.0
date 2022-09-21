Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C672A4A3A
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A9F8C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663774853;
	bh=d/GN218+9MmhqNtG6nzu0CGFJ/Cfjr+MPQuUhvTuMYI=;
	h=To:Subject:From:Date:From;
	b=KO7iZJsT9GOftLvxMYud5zPtQN9A2rOUgh9E8bbIYyI3xlRi+v1gn853JrXVWAGoB
	 xnT4+JWB1L7Nyh56zQssg2MKUsc/XZYabVT2z06gk45nPLeZtghbAyUB9X6ddFappq
	 rch6ICN+V3+RZtuJL5HMvhbFZi0XqI2yFJ0CdQFWWdzsK+GzzZw5m29X3bzWkSVXRt
	 IDKhifJb+yj66LHLJGW0x5lXnDCrZ0WlUtP0QjdsNZEVftHVFf14rRTQY7Icl3cPPX
	 BbH3gH1T/VxYo9pLo3gy1AvONpnC3xRIVnzMtyoApzhhe/aadCroLtFMSBz6Ub22Cv
	 kTavoARaIKQfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C4CC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377485333.7850.13480830679044084810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1481f756113fd9277fdf714cd025d856e1605fa7e782b099c6d6c37d8a9ee131
Date: Wed, 21 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663774853
