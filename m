Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 123976105
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 06:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRPdNYwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87429C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 06:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703657896;
	bh=lRrj5nwDv7RZjbBd8IXrJAjVcqL0g5Y2n0rn0qtTcO0=;
	h=To:Subject:From:Date:From;
	b=GRPdNYwYOQZ4Deon4tf39x87lUoAT7s+Svnwre+rkBMsoIYmWC/QO4eFq/JE/NMwm
	 VUny8RzAbSTpcXMCOSQ5pZk7EWVfaLeQDkII9GGdEskTfGzgr/OeSvgx5N7leKavF7
	 UxyILCxQRLaxKt7sF31/gzsH0s856/BG+izNtnHphO9NugXq+ZRn9zKpQN2VfiCWPk
	 x7JPgV5ayMOs68PVqA3wmH+8tZmwXn9xXBONBKm+pZIJbhy488qA6+OWrw2udn28FQ
	 J5DMx5W+QEm+Nr0EDGZBewpuc0O3fSHFCAI6NU8d3BrgEDk29vSE+tw96t9HCLIvWo
	 WXsjfZmd288Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A153C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 06:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170365789641.5282.11649609299842307875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52e40d476750082f72114e267fbe80f2416d95f4654669a763e93c4243d1eb5
Date: Wed, 27 Dec 2023 06:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703657896
