Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6998B566F
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 17:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0161CC433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 17:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675789686;
	bh=3VrSTm13M00n3nDlkluvtgDYbxVOdE/bY72qvl4k0T0=;
	h=To:Subject:From:Date:From;
	b=oKlmI6EGFFy34sYRg9YA+SNhB2Ujptzk6LNyXjM5VBhrFeXmd8MYfX0FTSFlN4kqZ
	 u+8YS8J9t5OBQKxh31nwdK/tYw8785wBhTRvZTmRFBW2zP4iQNe6gBtodps/ysUWLl
	 EUwMdsx4z/yzMBJsMXmjIASn69PHDfio6IllGQF5Y1O6If5DpmRqYcWq4iVsOMqOxb
	 Im6FOGnr1Lft/f6tmuyfhwvjiSbTW6tNo7EA+xXy6MT2FdnD6cMg4W5T4f5CvNEr2Y
	 6h2xgrbeByp+aapTPqbRILy9cpcWbi1jz+e9WGQDJDOYqYdr+/YIzx0a9nprxg9G1v
	 xOeUxpFOjImsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F36C636D3
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 17:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167578968584.12683.5949070366325120858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6005fff448dc21839f14dbe4e7949298499569add474179c31751dd2ceabdb
Date: Tue, 07 Feb 2023 17:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675789685
