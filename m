Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AA417CB
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F749C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670993487;
	bh=uNuTyFGEpPoiXtzpGOZ+0a473O40JKA5JjxKMFNAKYE=;
	h=To:Subject:From:Date:From;
	b=ORO85jvr9N3Yq3+UmZffDdSZlk3ttiHxAIfmQdIdj8UbYQjTeleud6GxC64+wucfm
	 QMHdCwTnxgNgMxxRxVm0emrS3sZsUfXaAb6/hdYO9NJxJ+iLjMdMU/xDpC7ykrpqaJ
	 jbUwPPwseXvUe5qocyOyWmFlXCPfBKCrWLzKe98WQ8aKITKaORmZfGNv5jSOCYrK8m
	 rx3M35eTnHJGo0+nkkEWMEq+YqnEL1+pw875wmQTh/BruLCbREJyeOVevSUgi5wTDH
	 cTnMQIZcXlffpi+yVjjZgHUL0U8X4KQDIivCsJIw34BU/AkL51NxwfidYGgjXYuCvK
	 sES95Si2U/mVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649FFC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099348740.20217.1898398827770485658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29ac27cc641528d302f19dfe02a11a08d64ba901bf52c30b06dc877c3c7818c
Date: Wed, 14 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670993487
