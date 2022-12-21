Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEB7291C
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78508C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671646887;
	bh=DP+T/x8wiLCXkX4qabsxeZPwNgj7SjdmOi+O3PqdHXU=;
	h=To:Subject:From:Date:From;
	b=V/n00LRlIExj5IyhCbbcZprhiKvz+ecH2jIuFdHuXmgjYJ9pBvHZeTlrQ5Hjb8qrS
	 KuoH8F9I6BbO7xttknjzAM7mN3yqEyaavP3PG6GZ7Hf7e40TZzEC67w96ExCvnY0lV
	 25gtfs6wG4UgljhfYspkd9fLx/Lv6baqFtVf5TIMdEqpQiS6ikWocoQ0VvyyD1ZGA7
	 y4n2cXmtJqLVoBvUyqBueVLrCI5Ur3Bbu75yqct0bdnhImaHPryAUWvR1RoHQHlRc+
	 +LCV+V9Fv0H11LYujWtgyVJnEw0mqKiirAd2Voffw8/HQwslsZ5/zXGVcofCsoRz6e
	 y+RAppAfhQc2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E1FC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167164688738.5363.5913739259358472700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1bb2220b5a9353a41af71cfec3018b4c6196338ce8b5cb73c62725f01eea40
Date: Wed, 21 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671646887
