Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E0CEA1
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 03:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98BDC433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 03:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691809388;
	bh=hvYakz+P9vRgOuzErhttVqCYnk3zVn7gDhMTHR+LMfQ=;
	h=To:Subject:From:Date:From;
	b=m9G5msLLBnLyFBtkIOem8dTFtgDa4OLrUhz14RihcThC851Qmh2uSYMmewqgdvkjj
	 BMDhjYrxP4lS6TjVFn3196jhxhya/JPedfZCwzntCqcFj1e29tKyTK2gYvmJLQyLcQ
	 NgMraqPM4z1g3K6eBH/2xCFhJVTP/LH9KLHPFRzhAeV5xrrZEzqR7ahTH+uIafvTsj
	 /qATDsxcB3QcA0dBQCGM3bde4fdUuOQ+5rFKiOl4IUfsuLzOJdZCqT7CA43eQnb3RD
	 k+LGEzIE5VKDv66wUtQzpk2gpv6WW92ZlSbpEpxSG9A6WFWt20b0bkj7G+xqknLF3V
	 MBpnqkIdpznHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9642EB64DD
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 03:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169180938868.9304.5770742597397748679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79990dc6a27f9a7fe8dda81896abe2365ca8b24e88056674358e28e3cfe29a8a
Date: Sat, 12 Aug 2023 03:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691809388
