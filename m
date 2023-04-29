Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E1F17CB
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 01:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8631C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 01:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682730905;
	bh=YYAcga3yvuhMUsEZtsVYd1jSlu+CuXKdOz8MJ1j2ORY=;
	h=To:Subject:From:Date:From;
	b=YRZj43sVpejCmdTGGKHgR5FNgT91vd+/uSKtfhi1wGvLPWOdPVpFb3KFLDGkZui7e
	 DL34koOascakGBeeW+aP91KfOQlbrdmZXLiRzadf8TjALZxPAC9O6zUo6pzezuCKy0
	 tW9Gtz76Q9SCMIqri2sou2s8nrqgPU2slYJI6fcLg6A6lDNPsRtGaGoe15HzFdKX2d
	 bJK5ApLGgh/Dg6cAA9GBodg5FuAv2U0h1vX5U0UqebfAsf7IvJ8TtbUPyg50/Ix06a
	 sbBcrXPb0C/dsmsJ0pbu+qfgF9ybgKQtPD4VmTV4FvRXK4V1e6uO8KgeS5AUmbgJIs
	 ajf9ZPQEfj2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3B9C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 01:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168273090576.22260.16951108400892816231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e46395066ecb0d16cda09f0192e2dfa5fdbe79caf92f90c820fe2f9c7e410cb5
Date: Sat, 29 Apr 2023 01:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682730905
