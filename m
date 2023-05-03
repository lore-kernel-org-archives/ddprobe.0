Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A267E
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 02:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22BF0C433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 02:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683079626;
	bh=EVSmgo7Y8Ql3Te5oyq9B7Krk8s/ogEDeDJKmTG4LLS4=;
	h=To:Subject:From:Date:From;
	b=AKcnmyEVsng6ovhp+1peUGpMpWKS0cbv7cOE220rpgXDmjqU8cJhF2JXjrfL443G2
	 BcniwNpJ/VryCf2Pu7qKHJtQR7auEemCgtRP4wFkovYTTbL9EoDMSG/ABmZVu72yFR
	 iesVxTEC/2mRJt8fehMF94PH1nyuM43nlRD4GyvccKzlHxzUyvTot0KzLVQwez7CAG
	 1GsUj+whxB+Ud1d5AnSoMJu1v7v48RURscR1XT3qwoYb/DgEJQ7fr8vJd1r8iDVWAI
	 jKXcWhcggL+33Mb2IWHMHyoG6c02IrpnnhaOLbPqQrQ5ZB7BBQmCe/NATzy4/A3O6U
	 NXyv9A2wFTj/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 014B8C77B75
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 02:07:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168307962598.24638.11519241000375023745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b301c26f80e0379bda825c34889c970268528ebb8bb72881d493381f6f98927
Date: Wed, 03 May 2023 02:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683079625
