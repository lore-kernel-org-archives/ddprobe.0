Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C771B5394
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A95C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665256253;
	bh=hgkbAidBa7Tc6NvOd3MRKzVskmxqcRyusHW5c3OJ/x0=;
	h=To:Subject:From:Date:From;
	b=f2LDRCBLM7QGjtiXocIaXgO+kbLIok4LHEQNpOmjm67z33nv+D/FpzpNMwTt+bWju
	 HE0GGqadzCE/Jq/3R9Kf05Mvf6igXfXHOphD5qQ1mQp7oNBnQDhsR5SqPqAws95sr+
	 pxELT4X0bTEIZLOBcipS/r1laxpAegHp1puEGQsgsvWRiWXECBOntKcMYkCUcs1ATy
	 kQ4sqPE7/o/S+44axN/H1vly/hPuboReE968TbtdbpNJQz7oWrLBD4T3qfuu1ublfN
	 bzoohmQPHkxs8ngHuPirMMJUPrevdZzq2oi+ZYPrAq+5A35OFh6zc+xD2SGV9NgTTU
	 dMzen/96WbpjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F56DC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525625336.7297.5381119404814510160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a16728dec3f4930e345bc9c69526836f69e6e7aa5bbc2e1ed000b96bf2cdc6
Date: Sat, 08 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665256253
