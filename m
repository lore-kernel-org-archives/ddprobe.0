Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9E0256D
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A052C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672409487;
	bh=Mlsl9GDvwxeQbJkjJmXr2IoD3aebc7X3sk9qLLb1RTc=;
	h=To:Subject:From:Date:From;
	b=HDfxaVdM5G9epgTpXdeaURGStzD9EJNPhmkgws83k3Ysuv1sjEoHfSsaF0FbzczJa
	 p5H+vsFcdJHPT3qe++ne/G1J0A+UvDyHyrSjuRudICJiWMtjPdCXzzaiaK6lkR6vTr
	 lS1biF2rZK/JZMtYXydrQHD6eAGZm8WoASM2YtCbkWGL7tIaF7glQVwDHOdL+zUpZe
	 edTUhr3bRoRziHCAxC/qREK9OFqPakZWC+1wkJ5vNHrt2J+pmUVPYZs+nSD8EsRMfY
	 EFvgrd9pWkOGCTWXLzZB6Kiyj/Wbd6elXw9R9seMxR3x0m98ulea67jR5z8O33TmDC
	 dYI8vXN9Z/HWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC6FC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167240948738.6087.17646184018914647604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4be8ee257ba499dfe284d6155ecd0491928785eadc74b7810fe71039f14d66
Date: Fri, 30 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672409487
