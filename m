Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4FBD1107
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73098C4347C
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664441453;
	bh=FR7g4aQlE6hXV3FBYF+rsEDNfO/EbH9nYekoWtQSIPw=;
	h=To:Subject:From:Date:From;
	b=QgEjVtpe38WcxhYdjjPVkFJU26LBcWzGVLpM1EJrpUP31PdqnzAekDzVH2P0b06l8
	 WjkUfWKp0aZPtPgXJ8opzt10ZWu0WLkW/WJrY/+d3EUxgYk8kD+kAHU/ONLrjUUY1M
	 BsOT6Da7MVT2V5B4ffB1GP5yuoxPuRik7m9Od6/+wjI/IJ3GtUPbBCPXls74nR2zV/
	 KPfydfrme2YnP9EKE3Ey39shjpWprKnw7CkqNAPZsoSkiYyr58l3k8o+RQROG3cDTM
	 ijDSWoRhQX7R0QSmWns9pV6hZko+X0DrHddIiGh/gpWU+MpHsNn44TS+DaI7RN/VhB
	 sk4Nb6wBrd+8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5889CC6FA82
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166444145335.3930.16424762288549066379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8660e6d4d565c63cfaa20cb7d34c4a89c0674bf6c7f79c38ae006c8b06f5d4
Date: Thu, 29 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664441453
