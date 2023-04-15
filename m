Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870A3137C
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 11:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 29E1CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 11:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681557786;
	bh=Y6LN1iLWLaXEK67DwUqEvZIoB88r92aEC/Jpc76UaGY=;
	h=To:Subject:From:Date:From;
	b=jAz6f/bjl+L4K76lv0FFctvucz1hdeE7qgQnOx4stO7ZXLtK6VFukmPD0oXE8Mvn8
	 4moVXpYGR881xFvJIhr54JgxAWKVcMSNhJZi+eL4duP80uabBpU2lzjyI+Dkp6sI65
	 F3mQCCk9bAhr8JKBQ83JZhuvPF4KcH/lJUMYU8ktxjuJLeLJirnUVzPiOAFklNYz7D
	 uxsD/g9YKUSrSeQ4VhTaqoUI20BV0tzXeGCNVfvcQIS7qdxQQaKEo5itEJJcdSoJld
	 ylYZAMMxVGEuIWa9EkQzfWvVjTr2BdYrCABYzic03vcPgQ5hH5E4hy8OteXRZy279J
	 ljxeds2NzaCLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CDCAC7619A
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 11:23:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168155778604.28570.6028388151595984056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7344983ae4477e9fec073db1216cf8114673122bc9037e67bf4b16410f9341c1
Date: Sat, 15 Apr 2023 11:23:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681557786
