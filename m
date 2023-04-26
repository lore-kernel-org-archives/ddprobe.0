Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383F86FC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 21:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D44C433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 21:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682543225;
	bh=1Es9jhAlg2E5AA+lp89JXXFJU7eUM/ZaKGl6qSdcAmo=;
	h=To:Subject:From:Date:From;
	b=px+2AuUP5xJlVVvMkDqqIVZ67nNYMadpAtxoi0J/T2uC0euNH5R2aLTEGdO4NwKyS
	 NxLKPrv0yEKwszjXj9Ax53LviH6kYFfitN7XR4a1EwGCEAk4BigoGb0vZFNl+FNehS
	 7+QVz9zg2+0TDYAfNihmtl/fgmqCqASkMb+oDOuKBfqYOKfQb39WupheLDPlBLcXBE
	 16tbiUFoWQl4DBbGbSfPbjeKNiGWZxM1cDkuFxpt8vAuU0iWP/qOxqM/qY8F9JEVlc
	 LcvMm6dFEFTrXeHyYPx0tFg7Cw8+ZzazD87K3adG9HDnJzEvUJMQzYLUSaF7AayHmF
	 JFCtzfPxrIwjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9492C77B60
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 21:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168254322575.26728.6748020582135899036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdff0e1dd0ea513c73768c57b60e403fba3bebc574163ebfc5228e6e9c6d9bc8
Date: Wed, 26 Apr 2023 21:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682543225
