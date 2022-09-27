Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5DED7F4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68D8AC433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664277653;
	bh=zmbHLYqgHDfEUStyboKatnt2yDQtgCgNiVqIGvgBHCg=;
	h=To:Subject:From:Date:From;
	b=vIlEn5Q5pKk0O4ZXyBSrAhZNNNGRN4xx01rizb5ws0Z5xGlex+j7tMiJrp4lCFlL+
	 Cb4fhDeO7TTzQ1Dy6wXz8eJBrpCsOaaO07y9/Anv6AA/HQxdI164RxiOLz28r2pl/6
	 qMLBL2x+uUcGMVEjvTVsOuPMvw9gNEeiynXyZPEzt07UtLWoQ1vleby9SSwHy6e+/l
	 /f5EnaFbTHLJ+m4mbf5n8j7tcFOWVMqcaZMxAketAqpFn50p+C+3RBGvQq/eum5ixt
	 gy9HSrwWAQbujjuWhicjDQdjAWOgb9fQtSnq+xOCd1cn+KFd5ZkhmBPk80IvIVqgrE
	 KXhbUc0VS3UNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5A2C6FA92
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427765331.28431.2641596260394491612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd176b2ef402651367f72f9f95880a24b460f31fa586517ede7a351c13343b44
Date: Tue, 27 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664277653
