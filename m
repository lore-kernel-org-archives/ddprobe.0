Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7FA1C10
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 03:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 35F05C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 03:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686282846;
	bh=1RHD7Ra2d15jqdrnlWvoETY+QcrQbknVWy9xdq8Jf98=;
	h=To:Subject:From:Date:From;
	b=ZMfOx/cFbF3swLzhZuLfSDo/Qi+jo2ge2ykHjVPV7JZECK2comDdfLYx4v93xLShg
	 ZbZ81pOpsMX+Dc5UR/Huqx8Yy40D620FyYiswuXXIe+MVu4junTADhp426e+oCuMmV
	 01IHTFx9ZYA4dhokhtfDdUk7X5l9eXR3eFjntLdxPvhgup+rEVxd8MED8WHU6W/X0h
	 Uy9OrluFoZ6JMo+nSvAhSpSzNXymjNuOrO07kIh5Hc4NYR46IUiQR+jLskINqkydPP
	 DRancPyHOUaLHD5nAvy9IrC2iWdNfowLKYceO3wLLL8r4S53SBcSeUxzHg81Qhy2/H
	 6kSmbhjUZqEJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0ED38C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 03:54:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168628284603.15000.1987273173662944837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad039717bfa648ad083fc543e5fe34ca02efdaf04a6cc233b075bd35da5e6235
Date: Fri, 09 Jun 2023 03:54:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686282846
