Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62F810FF
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBEFC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665220853;
	bh=SUBMYqujs/2vgQ8XLdl3GzJ2/fxVJ2N6w9BLX2iICNM=;
	h=To:Subject:From:Date:From;
	b=A0+BLawTYAqj2d9mN4HPrPKb1BvwTrjZtmDzJqT4FuWPM1bG/BN0Oa2cjhrvwQ4LJ
	 0UvJAfElWoH9CZrMVxVpWkLYEGZgx9EgCAJqIZLEdl5fhz2UIbBZA+sTrcxpv+wXyL
	 SOJedhlTseUtdbNSrEmhxc5iIawQ1qcw9jakmSIkhBVlWG6RH2io+1twTVEXIKyOIq
	 dcYlWguEUl0fUVMELpIZ2EDydqyfoLgfiNhAWZGrrcjtdsR5FzdI+MCBzFgZH9bwJX
	 KjZGkbylLhqGi4ykCMiIZVxYOUpIHZl1qZRbDaEL1gYCYlTPqcZ7beRxC9s4mgerXV
	 0+5QSvnEoChgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5851EC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166522085335.7124.13670101267336693260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577b46145d556a3f0b7ade453716b62d215c365d4203459f005fcd7dca219d39
Date: Sat, 08 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665220853
