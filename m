Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE29A35
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 14:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F25C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 14:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677681365;
	bh=9FW6z2S5+K8rZ9T7DZiVa2Fvw0s4hzaUW5L3oVvO9qU=;
	h=To:Subject:From:Date:From;
	b=lAl2OPP2ac9co5MWYh3QQf4/3vxRChmZ/ymQavClTlFVVoBE5XEhsbD3E0ZtdT6Ln
	 JKWlxYznXstjvABkIaCt4Z7fH2qf39LcZz+Hr3ux2o9adEHqD7+8Vo3+EIgtsW8b9g
	 dOkRVskDd3WLwt2sUYd4a7m2rDTETlaBXjdY4trCxNS+TYT6s7u0vW5jHB5x/WG+yq
	 FxcgTVXv9Xb4f4F5Pas8DCXPUkCHZZhXpwzWC9sgoPdVxi14ul3AhUSSA9BH5/szD4
	 NLdWYDksvxpEZYzTEMpDIWPnZLdMQ/33O0NvEb2kY2VESbQlKDjWUIoIr5GmFtogRG
	 ZHtAgvnCAD2bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0DCC64ED6
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 14:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167768136576.10371.476783151930072810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab27045e6650d2c6dd3a60076af8e8d8fb5e38e665dfa53a12df5c2f0196ff67
Date: Wed, 01 Mar 2023 14:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677681365
