Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFC329A8
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 20:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB689C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 20:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677096845;
	bh=QozzepO3NLURvslvHrwHjqI9x7w6klSO7IbkGmdwGnk=;
	h=To:Subject:From:Date:From;
	b=b/zsvFklEc7JCVOWpkK3clrkhNsSxo+jEsWLikUaPhHI5HcWw6h+BTFqzDwc9y9+O
	 hIO5S92gJQpBB6S/MTrXypu6b6hdaXKYgM4dzBCpaoc4/ZK6X8awWmJovm277i8pu8
	 oYLeTItGJpsqCsKf58SXYmLPRq5IUJxj/dfvmg6rpsirNU5Dbof120XdmSZWHsc4wa
	 GVq7MQLh8OZ5T6TQ89Vhlhr3/jX1rhXsixWhmddiwQLQT4AxmkxFtW2eZo3AVwa7ie
	 JAhXj27yUk/wEM2ETQfXZusN5vko4+ndu1Ufoy8upzitOMTP3AWCRah1qHAD1GylSB
	 trVTI0Rn+8EMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD08C636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 20:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167709684575.9145.3592885394297739286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e42b5ee072d6382bd1a43759616d82a02d88824a8a7e1fe516ed5a1930bbdaa
Date: Wed, 22 Feb 2023 20:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677096845
