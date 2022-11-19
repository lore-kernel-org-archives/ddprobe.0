Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C844C1368
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C22C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668849054;
	bh=ejYywWsuuErLNTDePXMizZKOpHqgmUApBfFxApjYFNM=;
	h=To:Subject:From:Date:From;
	b=HqGpRAomwheTIlqclfvbrzCsjwTO66zpFMrR4WCUDwXMYdqxHrH8GSARjLDwhTAQa
	 LxVuyXbhWIGRKN0fuqELi6zFBWYsMeBaWjZMOhyCHZdv/Ok98E9S3+l4P4/0KQeBlZ
	 jGXa4yW2Fs1gkTg2bNBwCgqfYd27Q28cY0ijasX5a1hQbGzPppKD69JT7jfGJlEqm2
	 E4CnoxDOoyVe0UWbk45pKzeBDuIWKVNRJ+EtqmhPkv0ZDlMBKqE5Vtnu8ZvIe9h6L+
	 pE5sO5NwKVs6AvQ4keUwgr/11KQfXZ68zCXR+FAl2XL6c7L4kLltDbPFHcFATf8F3f
	 H7E130kV6Ayug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7A1C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884905436.5637.11962716853050996341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f114f76118d72597ace8b0f41bed8c19b21bb6f909e8e43697a6cf218c8b4c4
Date: Sat, 19 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668849054
