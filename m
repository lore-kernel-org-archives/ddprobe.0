Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BE931FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 718ACC433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666947654;
	bh=vmz7cx6TkGVV147VotJH6fT8o2gA7D9W0cOzZPiD1Zg=;
	h=To:Subject:From:Date:From;
	b=LxRZOyAkmU+n9JR6FYlf1M3GR3UjnufXcbTDJXZ3QkBcMS8oONsyg1PdsfwSkd+Ar
	 uRTdPwQT8MAY8K2c41Hbfope1aaDeZZsw+RjeH4bHrmXOhNfGDWx5XSqyI7qrNAOH6
	 /pIhV40uqMU/vLWpK9vihp5Ovc51AA4GKS4dkaAVKvrKNYgd+a9+qzYvKKPNaHNEcq
	 DFZRg0IUpm5FREDK5vJTwgmEV9lS7apNSWqXOPK5wp5aemuQ+NbTyb2Tieopi2ALe6
	 RXoCPMMjGKmDyuHP1gEI9t9S9p0QjWmJ7BwoikpLWuZTkWlcbYBjmolb5IJwXWCm9U
	 LhYeAVjgBnTgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AE6AECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694765436.21804.16660865492094791713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cb8a8073548a94bc347ff11d25a979ea896ca09c70ffcc47e8db2625b4b5fb9
Date: Fri, 28 Oct 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666947654
