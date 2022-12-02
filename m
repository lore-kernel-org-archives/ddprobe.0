Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EFD4C89
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89015C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670001054;
	bh=niDLDaMZetGL4yW/8X1mFGf8IYUCrY+70gwIOM1hpiU=;
	h=To:Subject:From:Date:From;
	b=oHgjhEWpEEoFdzmmkpxAyZFNwHreDmIr2ekNPFmSzjyHjooV5dTITcyjxnQlNIAed
	 nHuxBRZMm+frysPbmy5yxeDRHUeHicnjLnGvYO+LBDdF+/tWP8NO/cp/qBoy6k/AkW
	 xIWog7Z35xJ3v2N5zM1L/Rzhusl8HH9vvofWqDZ5j+txNP5UVgsMAXha0lVn0ZwXK0
	 Xyz6xbwccATNHlZGZQPZ8pZ+3sLoPwRRWNTrzC8Y6+ZwNl5KvFu2tGdHEbKFB7mNyA
	 1kv4dpwG65ln0W7zZmwv4tKqA+S9rAxZb70jHiBZr0j7IpJwGI7LyAtOloYs0F/Wqx
	 1w6JO8lmCqFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B236C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167000105436.17068.17343815917976788617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3c0fdf0e8b4f761bdc1291923011b00b5d7ce54c14d6731907401f92243aea
Date: Fri, 02 Dec 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670001054
