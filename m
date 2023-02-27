Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398F8628
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 02:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4376C433A4
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 02:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677466565;
	bh=d8cJ42vIRDSOrCWFYHVFZh2rvSvppoM3+F4c9qHMv0Y=;
	h=To:Subject:From:Date:From;
	b=skbYJScXxKB+FZ5YpZb7P5lr3pFqgKGJMORk+lxAAQKcG5+7F5mEg6Wgares981P+
	 3ySMob09Dqk/MBul5wEg68Le5F0K7W8lYkOv+uBGNrEMHgvDa4e0lMPN4MMtSjETmF
	 mPnRYWu9rmkt/3JE9N9T2wylgmI/nvQFrzA+Dww/E0xvlsyX9i+b+Kd33yBQgImXix
	 xL2B8p7yF46IT9KxLhO9dqqFs/Rcit7KMdujQXnKnVypIkAtKeWpwWU2oi+m6tO82u
	 RHKpQuYoAujMJ4qTV70c8lLNGMiAKzuS038bjEgvucntwI2Et5hd0+fZXxNpL/nub8
	 NhYFCL/JBOucQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5917C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 02:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167746656579.29427.10660941118243110434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3937a8618c3b3711bc2c29f82e9f7b9ff3bf1deb3f380c21a38a12460336dd8e
Date: Mon, 27 Feb 2023 02:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677466565
