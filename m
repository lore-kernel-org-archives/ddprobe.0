Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77AC7F7
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F2AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671271887;
	bh=U2Vt9iyxnvpk4ez+xE3biAhN7KKhPRNOjYVgp+PqY6k=;
	h=To:Subject:From:Date:From;
	b=lA8zOdUaENEVhDaGEeEkoDuFNPv7/CHS2lQ15n5LHDzdQgIonE6d4CoQg2JU5Jq+y
	 dsGToBbZZx4v3apnlPpM9KG9GzWuMUlcSgcrk01wUaPEEM5qIdBUHjvjs8LPjA87qK
	 LciOYjcMzElizRNaN10FmKvCKgZtRo0TbqPzgXMaDs64Hzme2YDXB9w+a3XovVZVz2
	 Oq6FM66ukvLpIgnYPHnU47WCZaNCM1l3+7fEeQIVGs09Om0d9iUTlXh5oy1xP/NxCp
	 8fmVxFg2Q9CyY8QNj9GnBkOiLmNyBviqL3MEXqyob9BGaVR7VkI8XrG3z48QJtxT0w
	 xlGEDY/mDITPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659D1C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167127188740.16911.17276573526862547386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca556a699712a48456fdd58e1861d0761e85d39c6409c99f209365402150554
Date: Sat, 17 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671271887
