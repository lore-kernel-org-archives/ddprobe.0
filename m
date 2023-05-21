Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443A623AF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 14:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E452EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 14:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684680725;
	bh=XnEurWu76l9QUzKlBeiC9cwmq9x32EIs7MkQ4LO78oE=;
	h=To:Subject:From:Date:From;
	b=cc4WQukb34JmM/Gr/HRuYhIdbLs3DuQ4PZIuKh+CCxzb2RbvVLgXuumw3IZ+1Oruv
	 OPdMeSKObAfaqyKkrtA2swFwbK8e9KYcpJSI/L2ljF2ZoLl9djEoF+TwN6shadr8bC
	 vI4yjwSYPofhj0jgYgo6uWJ1oQwUrIQMINH1F85IRvc3HAteIN2ZyfFL02iARJgL4C
	 dfOgFhrDOjQU8Q253xmK+9JUGdBhVfjWM9a2PJxg6hVd7QX5boh6OEFdOJAcdQjkN4
	 aCo9jB3/mONfrq5w35Y/7nIYVeHFTUzcV1+67tlpNrSLhALoMxOTMGWuBW/VzKqe04
	 3X5dgoqUPVaug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5059C77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 14:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168468072576.24741.9978185832694389428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e609edd8b9c19601f94af7452314446e31ef168de75dfe08dbcb35a2958327
Date: Sun, 21 May 2023 14:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684680725
