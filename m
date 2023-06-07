Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723621641B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 17:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA846C433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686158526;
	bh=KpxnoU4EevOWGLn746nSyRVFuia0s7zxMAE57snoQug=;
	h=To:Subject:From:Date:From;
	b=vM50DLNm5WO2WqaQHFF9Iz12giJTnZB60UMYVpSKcALUKu8hs564SgMdN25N4ekO5
	 E2FjthzmawnEjPVVaRksjyac8qFZHRgVniTg6Xj/Yo5fZKzrKgZT76LsP9KDywf1uw
	 i+Ctm84n9gYMYaN4pxJrWwDVCvRnOulxpS72BpCwE1kEFEnJmB4LVJDdMO+26HbV2e
	 NoMhdKu9pJ58fVjVQ/4mKBUt3uzOqVG+ibiXC8GklggM3gTZDGNtkQ5sijhwKWT2NK
	 8mw7/eghaB6i9lkSBrklvm5InJ+nBDQjANPkyhVORKz4t8g78zfboa3b/Kox0iUDLr
	 08qKsdYAzSE/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB453C7EE25
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 17:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168615852580.14791.14940503583372790956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afbd641d078f94faa1e3cbd030d0ea5b43019d09a52bfc0493df68bdeb761868
Date: Wed, 07 Jun 2023 17:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686158525
