Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6B57C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED1BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663791053;
	bh=Gw7KAJESDScvyxa7GJPqUVak/dX999bXRTyn9uXBSZQ=;
	h=To:Subject:From:Date:From;
	b=ls7VVoZnVNoGZwf9ygFoh+tK7eimKAOD9SzEbtVM3Ifzm2CTOFqdvF8g2xum9tEQM
	 +Hu51lefXhsCiB0wiY4An0Aqvi/MyK16D01OM2zQKdrTE+OQnGYhCJDp19fFUhUATf
	 4P8ulAv8+u33ecNS5YBtCoSSSAQMCMhnvnd4w3MdmZDHAluRPH6UtYOiE+rRTKrtKP
	 lixD/bDLF8skJxDGtP/W2+Ynv+ymrei3YoKuvu5vimU8m0ETi9L0jN+YwVxbJcbrVQ
	 eUSYvN+m3ExNnG5KPV+roxBymT+hymbUNBXfuArdDjJJNPbBkGLyiOWGrIIXmfYZZH
	 ZI9xGxzkRWyEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5285AECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379105332.6347.17974959907646508106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef71e8c15f7859dc7e661640d5d8be6822a67ec862743f25b82f4eaf58be2ce6
Date: Wed, 21 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663791053
