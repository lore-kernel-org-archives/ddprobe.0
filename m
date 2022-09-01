Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7ABB746C
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 20:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76AB9C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662062453;
	bh=/n8B3X7ikC27OBQzGUuAx1L0qtoKu7rASrnnw695tw8=;
	h=To:Subject:From:Date:From;
	b=ILIXhUrLt5lY4atZq+RmvQfRc2b+jrdAov5B6h7Yfw4xDSVlLDEkDzjFRJDLdN+tG
	 B5Qyq5U+eluX5jYn9cFYcmXjPO5mtAskKOZ0rvKHC4W0/CCrWZsx/oBQ6/crXGE0hi
	 CdIgNN9W8BpdXRqwTL7vy68qDKv7toDtqp3e7/UytW2ibIRYufr6IhFzq1jUNNFcVV
	 nWfM6NacA4RDaVdbUivZ07VfNkK7H0MJJKEq6OHYKwC6Z8px5Aw4O1Dh7lHMVcSwfo
	 3VggFbbub0B4V5xV8W4PMhx7fkDkWUvq85xRD0sxQyRTKMZ45Csob2/Fkb67tLISES
	 Z/jmG+bSJdLxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583E2ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 20:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166206245335.10936.9175256556682939271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8833c77c7538bf9d2e3d853ef30127f0f79fd16318aac9b8496b4df409589c2d
Date: Thu, 01 Sep 2022 20:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662062453
