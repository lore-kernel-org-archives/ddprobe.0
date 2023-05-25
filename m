Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524E024EAF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 22:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03113C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 22:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685052906;
	bh=sGgdPscagg5X8CZMvC6NPApjw+2MWKluHllMF8kRr7A=;
	h=To:Subject:From:Date:From;
	b=gFits/z5nc5I8kDDCtPxSxu1efHUe0OnEYitk5iKMJUb8D6W0w8YuVW7plfzL9p6M
	 fr/nhRcZ1dyl42OyZZpWPRwp9fm9ShgpkwxFDyL07naimdyjw6PHskwHDauv9d6DHN
	 ibs5V6SV8ALYxTjIXlhz178cJe5/ROTyasWRX/0SUIg3h9RGufqEPsmRD9cTONbCK9
	 CFNKgK9If5Owmi39/UTulSt3n93AW7kihoYlF4WUhT+/9kxz8+iJpI84vp5IetlZtT
	 NXYchKBY/RQLqH8Vhf25cx30UhUD2VQm5UJZbB7AQjEdaQL5DvuM0UN/qtSkMq+hAt
	 C8metzezfna7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8113C77B7E
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 22:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168505290586.12555.17264350738313300513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3532c0098e050c733fbbca4ff987ac90e74c47c06302cd867630022022bee0ad
Date: Thu, 25 May 2023 22:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685052905
