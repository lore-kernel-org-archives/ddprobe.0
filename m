Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BF523B7
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB5FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671543087;
	bh=lZhQg49V3KQTi4p0MawbtqUnn+EbkD0IVPmYRC5YM+E=;
	h=To:Subject:From:Date:From;
	b=gPux+NSr+S7r/rgUts9noqunq55+Ibw4TrW2f/Tqm/ZHxlO0PDBU5xJtvm10GogBR
	 of/rJM05lhgi0GnHtSDaiRzyHqepJj6mMeNQfiHEuTkCQMRseSd1c25iadV2tKhElM
	 NuPUZEjOvr+ZIGBqFb6pirnUV5pdafPWvrlF0pcD5SdfD7FfdJJI/DtmHmPDu4bAZ6
	 wDzE8A7EytTYC1yGGS8yx1dhkHrb5AvJbfoQIW8mdVOjTT696XFvHtny4sKNnHkzSz
	 1w3KA7z2Yk27VMUmobTyb1TAtFRpILhZ6MGuVdsmQAfPWTvuUYjogsxRug6lfGFO/Z
	 DIae5Lq8ZtdDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65397C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154308740.27146.15540945161768390051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b8609c3615fab8f425e0e8148013f8fcd03059ce6f80cb959f11e1493e939c
Date: Tue, 20 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671543087
