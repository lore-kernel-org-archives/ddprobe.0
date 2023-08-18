Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8A3168BD
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96B7C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692381248;
	bh=B9E/uSTdBhAIiMKXwFUAaufHcAwXgKRwUyozrrRe1E8=;
	h=To:Subject:From:Date:From;
	b=uyafU2CBzNUJfh10KoyPFyp12f2oa+yfjgogqW7vqe5iMGGgi+jdHscrjS/IG/9CY
	 sSW9s4XqyvIGhPBuLcpkoxoEAqmTOtDAViN7cL5aQNKux6RpwrCYmWMw9xtUcNGkl3
	 uVTYSWTkWBfJEdguJDaOILhSXdqcz44ydNoFaMxpzvYIPCeplEWoM9niZ0BQesjL5S
	 +wLZ5P67uuRo2G6YEuq/H337kuVsEtVVHZk12SBNCLIyHS8GslegTcn/gz1Q7et554
	 ROZMPb3Bzn39ziuZHsB2QZHnl2px7vxH+j6QB5vTZTnURhIxMuEeeg/qsT7jciFKS+
	 o4qQlnNwI6AAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8105EE498B
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169238124874.23030.9682440225739610157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7cf1e02a811fef3af934c321692f2d66868640e2a9490029839c5be764f242
Date: Fri, 18 Aug 2023 17:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692381248
