Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5032518042
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 18:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EDBC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 18:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692987848;
	bh=XaAbLMSmXO4QAR/p5ot49j2+NoCMEGZcl2rcS27SEsA=;
	h=To:Subject:From:Date:From;
	b=fkUP8sGD0BbsoSN554g2I6ZTH/7IlIjzXHb2vCb7R5HyKAgU7JCa3Pw4CtMWPNuhX
	 qV0V1dapY1uW8VjN6PBBlmWpXhHB5UG6zaurz/AoH5utWqVtCAsSKFxsekVGJKQ4gH
	 sFkrJyyrfKQp14w0Uv3P3jGQ+DlDAFvVmqkng48WICv99DZ8W4lsigvke6/mgBXFsO
	 REhmFj5L23ahrO53AA3u5060j2ShDyZE7PyrR/OtqGfY9wBVXivT2bIZOZiGDLzNWM
	 1MBvmPLRmiJei0hd+LW/OIKCvBqqf0fqmEoi4HRN/ym8xTguLDBD6QyTxHjcwVunw1
	 ocISe0qxDU6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF1FC3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 18:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169298784868.3874.17726890188929793342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ac0b842853f5323d4e5c19da5e17d5bbde4fcf0b78fdabc8a587ef2ba3409f
Date: Fri, 25 Aug 2023 18:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692987848
