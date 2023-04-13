Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505F8BA4E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 23:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 030C0C4339B
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 23:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681427466;
	bh=5iogpgqx2nQs149ERl5u6BEnqftPMxTYmeLFptaOwac=;
	h=To:Subject:From:Date:From;
	b=H/0ymewklCNS3B4ejiSdoWzX1Ty03rzMZbFR+UmR+FEw2krzUADN8PwULaGaofR/1
	 wF9tQEZNG0SU0P3DMYp+0bwnRjfFs5Y16Vq3uvgJl1xE3jBx1NEPkpXK7y56Q4/RI8
	 haEWVgKQ7zqN2P3OdVxywkrP0QhjAT4tLN5lIrxxKt6DfuxPV3z59ELT37N2z5Tile
	 gGhPD+mm2Z2/21ooMscFb+L8FwDx7O3z0yvpPK/sWBSHSWoIHXv+HEySMVobAkt22j
	 pD28+9vzDj2KuAd9I8kTIfSq6THuXfFlcecXmd5DyxuytpuugB0695H+GuP1nJjIql
	 /FPHsFdiBTHOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA7C6C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 23:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168142746582.28684.7277159443882378358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbcbafd9afc42da5ed13c748fa2d123f01b798d33d4d34ecdfd6fd0f8704baa0
Date: Thu, 13 Apr 2023 23:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681427465
