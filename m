Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C24E55B
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 11:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5778C433C7
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 11:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688385368;
	bh=bBI5t3kO+HCxf8YYWDokfjYc8RRR2+1M8MVZ6aw7nB8=;
	h=To:Subject:From:Date:From;
	b=Qcj4JTJeoHoL6KEDooavgTMZlJF5O+pjCh4lGUnsJYYdaDibQxk11hU8eMs9fDQmy
	 kdCSyrCLs+xFyFsAPWEbXTUKwzgk9VElzSs8mmk+Zs6plMAzdk3o7tRENlLx51AevM
	 U6452vmhIFaJB6DN44old2zQf+MSTnSihMpUE4+ykNcZyEuDqU3BEczdMWXLujnOdB
	 WmJdgfWtq6jMIvPhUi+hq6tVPVTeVbIaHedv/oM9MtlUz5jTUggfKAgU6irEZ8NpOR
	 HfOuKiopPj6JDCQCR4fI6/Nem0csAiRHNm5gHqXw1Vtb8QEKZcqyftkaitdTTVeUkv
	 DSqCfbWeCS9Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB78EB64DD
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 11:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168838536867.2548.1972092205990667045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a157a12e1bc62f3f4b526ab0a73546f565d405a3ffb1e3cbdef026ae7f91c3e
Date: Mon, 03 Jul 2023 11:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688385368
