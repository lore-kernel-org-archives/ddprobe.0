Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D9762C
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 05:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AD9C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694668448;
	bh=TaQwGhIBXbvavMPLuRSQd/3Z2Ok7otFCv7Z15nVDmlg=;
	h=To:Subject:From:Date:From;
	b=mwgaEJyVt65mpomLlV4EI+ekNuYDYlaEpezQlI1qR+HjtNLlzQavrDXV2TGdYnmcz
	 XNGJ5k499LSaxgrlU6CsM0KuH9lmJfJHFgHwzHQ2FKV+aO1oUL3E80CtVe+1e5fhVq
	 4tosFEdghLZYsFUt7LfviPH/7v/rrHDlLHMxKKlj+M1qozz/ykELc2BT07oaI7zqwG
	 1bU3nl7S4MzwNbVbU8+ap4pGuEBcHMkdd/obUleCDvuWv31HxiqFBdGpXCxTosou3w
	 YsHSCNkNyNFh/nR26Yzri6gX6oTCQtu9ivOExX+04SiyJOwM8MepVsUywX09Ugi15P
	 cjUO6RXuFXATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7213CA0EF3
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 05:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169466844867.22866.3703081073675522006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac3414e53b6b8944ed792029415f1c61f1d7d84e9fb881cc6d9891667dae848
Date: Thu, 14 Sep 2023 05:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694668448
