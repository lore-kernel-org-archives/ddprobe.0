Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECED42F2A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A9DC433F1
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673622087;
	bh=R6sswJ4smkNP50dfpYwosA+fBa44kYInmm+H+c59lQ0=;
	h=To:Subject:From:Date:From;
	b=k19CqBt+GInLiUMNg+mHVeEvOA0gPeFvnGDH32xkR7EtT50xpm3u+6sstSFpO0Kue
	 pggqmm6Q9xKIvSvvRBQShVeAxjsi/PpgCUtERFWVYB80WY34WF+IWUkFA7BXozHITo
	 TsXepuHsF4QMvABzkpCGGox1Zj+q5f0uNyPvY0yJ2eIKMTigSkwuzmrzXuU4yvpaLh
	 LCBwlaPoJXLW3srzuWJO6A9BdylPR61PFOt/xYGq5xZu2Z3juBNQDM8kOaGt2MXtva
	 AcQ6egxtSoIjwqOpNGMeOEk3POSly4sc4LVcQ//AAyea8v8DlcyZgcQ7N+FMOtoYSf
	 Xi7qAF+QejNKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CBDC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362208740.16804.926638913765267904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d818101304410e65598803800d877dbb572fcaf52f500bb0a054494275c4bb4
Date: Fri, 13 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673622087
