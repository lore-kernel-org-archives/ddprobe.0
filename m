Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5A82583
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 890A4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672153887;
	bh=FfEmIsgk4Y/klS3kGccwdHiqSm/VXJGYdgjxSVQEqas=;
	h=To:Subject:From:Date:From;
	b=utNhAWaCLEiCRrUJVH7r8DImxAuAjds7vN8BvWTeIHymJw+/BtMIVMqP5cNQ29n4f
	 OdjthZYJnAT7wCReUTC9QqKxXQFJ3mfrxkLIgBWkUbZGLazi6iq0+AZNFXx3+xiApN
	 DFHsJR5463Sis9e9kugvQw2yL18Aw68hUJj5UcJug8yiQwS6z4hynmHjT+yTiT6ziJ
	 bl56+7/xgtRQs5eT197x9VC2H/N1mKSAqmM33dYZtN5hFAehU6va5quxJQjBEFInzn
	 I772LHc75A6WHens0NgxEjgwl6+k0D4xdD9hNeMXnT5ZxHdVPVeu/k+/Jq7ryeMuzH
	 gh8y521NloLHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE26C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167215388743.30916.11836787956752206227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b3327cc94fddbdf105ac06b074211b838c6e8c612641693501123f662396e6
Date: Tue, 27 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672153887
