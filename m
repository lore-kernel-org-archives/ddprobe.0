Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7127B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 11:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AB6C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 11:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681643165;
	bh=OmDVXXQmgQojzxSZLS2BWf5vSjbeLpzpc/z50KBXA94=;
	h=To:Subject:From:Date:From;
	b=BsW++Yt4OUNI2iZ5quMtva+xa3VsO1P2TV3C6Ojuc4ZWN/qAy0HO6gdxkySE8772k
	 j0B+7Cs4UeWrOIntaYLxtuytL8BYIBntxedNnrQxx78nXJRLd8KUTu/17le2lrXeW5
	 IUycc4pGnMooNJFA3MBV17FmqhsP0JT1rkwqXbRMARzMxGWhmRXovTkZ8GTbR8vJc5
	 3Vdyt6s8dDBROl30QQIqrCKSGuYFSCBeGs2yueQILsHlKz+PIIOxVmiWil1UdDB7j2
	 1DD1KQgFE0KPAWTKxVuMxQcgSVRZBCRlFH9/c1vI8HvPUIers2rSwj39Rd1GY5le5H
	 7DstczbSwyIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABACC77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 11:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168164316575.27680.13416570376897612678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c92db4774eb36832a950e0d6b2aeb83ee78fa5b27c0d96c6f4cf9e07861927
Date: Sun, 16 Apr 2023 11:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681643165
