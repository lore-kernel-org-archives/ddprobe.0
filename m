Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE7833C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2523C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674235925;
	bh=dR0yOtFCKsJjpA3vcVQyOH3VajPwCrUS3cp1I5pFEhg=;
	h=To:Subject:From:Date:From;
	b=TkVvYhzDhUntJb72paxBvzuTT7en3W0oTzDCTobFRTPpejy/hzctTQz+uH3ZdRmWM
	 zjllK/dIJ/MpPQ9RR3QGwP3J1QUFb64I/3SJOlgmwMlENf8q5ZZ7k6oyWvjn+3gYsE
	 CS1N3PPATs+TDnzjH4WV5hR6E7dtH0CgLyNP/ZZOU+KRKNv6NnqTb6/vNhTtRh76eN
	 VMsZt47ReAOt/pQduA8J5hoPGU5amd+5+x/f0pf4Erzw9oA2YMUdhtfKHx6VALOowB
	 xNcYnPph/LEHqIHqcrSD8E1ReArrO4EPgan8o0tJFdEZwmEaKtNWJbU7ixaXYTyHG/
	 VrE4y4O4ng44Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43FEC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423592572.7056.15522023386798410826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c009f2f127b6d2ac0be5f15540f85e5c0fe4b86276073c2fbea26ef2c13e7006
Date: Fri, 20 Jan 2023 17:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674235925
