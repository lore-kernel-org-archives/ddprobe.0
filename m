Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D248E33F9
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7021CC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670167254;
	bh=UvkgpNCbmItSeKUQunmL0z9//nKSeRLlkyRkfVNwYCQ=;
	h=To:Subject:From:Date:From;
	b=on2ngfz5GvnxLTeyPp/tK4B7zRaoraYfb9IHUe/DageNn9Kx3UWmrXSL4psJ+nwXD
	 0vftPvzydxini/Qp/tc6dJ/sH39EkKBgltFac2tU5AK0odCi4C1xrlj2nvufNmXSDD
	 2IFvKYSUro9+Jx84QDGOejZe/4dz1/kEPjKwx3dF4Oc3VdaBEOgCWbNvz3o2Zg+htV
	 wUi3ReiZBvGhh1XLDPvGDRtDA4VStgbLDS8mkiGSZlVXr7+VnxUQpitRUocdZ3yXm6
	 Je3zkyldLbQmm/grIbYjTfCtbJRFTl6F2cPMaQq/ViFa3qoFC00zcRi0HRw/nbCHoN
	 2Zu9IGeqxJy4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52993C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167016725433.12796.35796292580304835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6286d5c0a6b549df0cae42cd7844efce010607812a067a3999b4a675e572c8e6
Date: Sun, 04 Dec 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670167254
