Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C126D3D71
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 736E7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666458653;
	bh=nYQJvk8GK3vcjX/SjzIG1XIf1CjVQ6mUAUzwOChFPCo=;
	h=To:Subject:From:Date:From;
	b=Y6YLbo5PX6SSqo70s53i1RP4FnSzqYANmvKAIeXKCx786Yek3GAhgtEcbyZ4m2PSp
	 6FeJNT+VOiuUmpbYE/n1vEI4h2TRUy+FFWzYUcjLoJlkCU46cQGYjncTWcW0FN3efO
	 2cfgG6yrUjKkdFBdtuwgYcNuWfCifluggoaCoZMV/M1YJKktYVIeCs447JKOpqmWQV
	 WkK9pc3XAU6j8Iy9ZvWP8p61Ffzkv/Y/iuk3EWYSKnjViVBoZLG4ub0B1LPlANnRwy
	 xu0Iy/crz0S2mNIZcEqi2H5VvVC39cJowQUlaq+ZFOBREdJoquq1JfSs7Ah89osmF9
	 mCLv1qHNRRfaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58AFDC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166645865333.18128.16547287337006821043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434757604c646452c547f13d428cc387092a148acd5c7d0abd0a1d3cf11832f5
Date: Sat, 22 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666458653
