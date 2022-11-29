Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9483214
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A8EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669761054;
	bh=42z+pg31nAZOgm4ijXnC1stX/FeTaw/rucPy3ELmgdM=;
	h=To:Subject:From:Date:From;
	b=KyjoferbMHc+Fiv3h703ncwQQzi6PeR7USUW8dZitOtwSTCF4BVMcEikuVxIHH/1J
	 FkCSX72ftaG3I4hLRsjH+ikAlXZcNxGlWv6zWga/AGRWi3xB7WOOKGP21uXUqTb7JI
	 NnB/OMkwH5Q6jLIwz/qM/TZuM6hzqWE0uPBkjs08d3kfjPQd1277Vk19dbufNaHtx1
	 0H2kEYDdRatVls3otXEYc9DIPNehFA6LSfRC77e2bz6O7GXh7ZD5IkjGLepsaMr8tF
	 QdXJHghstbfjbH6p23uOLj8cnuu0L+2LuBrHc2Guuw2oNNwjJLHnumz0h3QXiq/lRV
	 rqzkwe2MGgzAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D8BC433FE
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976105441.15423.15613365840331666978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b756b9205daf164b93dcdcdfaf6497c5e668887772406be1cccd18f6caa069d2
Date: Tue, 29 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669761054
