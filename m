Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD7C100C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 16:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0910C433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 16:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692894248;
	bh=vJM95XO1AGiPn4hRbCZvVQK91X/9Mu6DfqZAqInxI00=;
	h=To:Subject:From:Date:From;
	b=O8dizDVFWwfyJdZWIjOk0rQyIk1wnRfniieXIydWrF8DHGqgZgDgc+fkZfABOGA7n
	 35jRNzSt+GEwTUUKIUIfa6Uq2Stoirf4tTzQWvTooOQa2W1JZlnVFFvkpA40dlH//5
	 YZGdebce6U+dOAjuzsaAohTO3jEPJwKTm0ht+gZqvEUbzlBliMpeTkHkYWmKXZDwFr
	 Qq2POV+Ex1FdCeTruy0xePNbpYWesg3eruzEC4bEAVxYk0FdkIb/bveocki2w5WfbB
	 YMWTfajxTNINMkUxfc0ptOno/YU4t35F5ubCOie2H/gXZ5vdftO/VUZlebvCVzuhSV
	 ekuKo3ygHAWMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D6FC88CB2
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 16:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169289424874.23991.9568532522603387023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0599d156e0eaae82d400ca04b386db009cb461143cf695877fe0a084775bd73d
Date: Thu, 24 Aug 2023 16:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692894248
