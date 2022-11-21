Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88C379C5
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77BC9C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669059054;
	bh=fs5QuYF0j9Tw8dE/1DtvgnuLiIIVFqTn1y/2zqc0Oe8=;
	h=To:Subject:From:Date:From;
	b=Y4fp8f/K7l4mz8I8MsiqL+7pvycO6IXTcVRdOPqfDpvd4zJ9hZtqljKAAuBLjuLQZ
	 3r5PtETwshU1zRcypWBq4inQ0g+KkQQNdX5I2V3IR1qnuYHFt7k9/JR8AZLyiv0el+
	 dZ1QShcZs5j62g7sS0/jvGN97zaR7ADO1/HHavOgudZZSCWvRkraEiZGrX7JF62qvr
	 +lxzw1WANe27/n4jx/or+nNsR+Cg2ROoQdGwz8mG0tVVeubPYvKO0AH+J0eMC9jL5x
	 NbRx4kD3Fu+vJMzQrU49fX2SpLGC3VAVXV/ylC+k6rrLikRIJl67fl/hAtbk3on6BS
	 KvvBuiTnIS0dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A430C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905905436.22800.11860929049590937171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 472ff96740646b27542dda14bad9eeb8319d2a4968f43f39ecf94044050af2d0
Date: Mon, 21 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669059054
