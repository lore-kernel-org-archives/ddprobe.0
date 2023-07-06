Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CC71859
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 09:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05CBC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 09:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688636228;
	bh=eMBgxwB/C033h7xx9rbr2xevBmFhIxGJP7ozc/R76IM=;
	h=To:Subject:From:Date:From;
	b=NZrye455znGZJ8MuaCcBdPrxBPREh7kOtnnzyKAyK4OIhhyX2dDyjZ+TWpp+oB0dn
	 mmlHDZ0MBPpt7CdxpOqqzDDihea/t2BsdLXWRB9J8LPCoMHNv53a8R79nBwmKiNDy4
	 TyC/5ce37942AuX3O90JC8b0kXFf430Hn3l5qX4eExh6s1kUnAbCVZLSRDGJKGY8yn
	 UXXqXBhi+4kWa2RyO0LZ1szDquQlM5Dl/GTDGMxxsw0XNf4UW5qWCDwnCgRlI//t+q
	 mGwx0glQDztU/ccO855hUIPK+zlxhBg8bfol4QUOwKN7+UuYRhkmTl3DOX5+d8YG+w
	 g1D0mhB+J/pcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCF4EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 09:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168863622875.8124.9973602675596320987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4434f716d2dca536812eb45d260dd21a1cff08d64e36e783eed4c5f83e706ef9
Date: Thu, 06 Jul 2023 09:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688636228
