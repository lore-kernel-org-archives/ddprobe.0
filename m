Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420B54645D
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMNDUu73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8A9C433A9
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700255896;
	bh=tOtNwrEp7fwe/6NgVymplQwUL5tGKWf4PJJVIhPb5EM=;
	h=To:Subject:From:Date:From;
	b=DMNDUu73qxMvKVGEQcYrdxIrJjfsguCBjZ18aOJi04/N4gJGTJCDVykg/KaBAKRwE
	 6ZSaY4mSyn5d2F6U79XjDd1EvvLtoI4cIrgd7paqzIwp1lHNgihijbwYKjdHFweSSF
	 O9N/rUQiFm9Ftw5SqxaTuuDZEm3c4Gb9MTrMpcAkfFvPp5sYPuMnkKVLc5OkcwTheK
	 0Fc8iTp4Z+l/RJCmP7RzTNmTF4SaQIuCKgz3M+bqDFVToBZgbkuPvxdzeKRnvQlGqK
	 V9nu2ZZw3eYl6hHN7uPoWEsKhoUpREwzZQI3dhRmRVnsud2yUqyTg6A1ve9EhWARrl
	 RvTEgHCmJrUiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7549AC072A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170025589646.12639.4211926094907657702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b771747c39b49cdb83944b73f7912c8c4f6309a924926210ab23a071f247d7
Date: Fri, 17 Nov 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700255896
