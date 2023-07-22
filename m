Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DECC7C
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 00:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5017C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 00:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689984728;
	bh=NYED9Y7FeX05YlL2s2TflEyZtjC14mXkQ5NfQaPQxHM=;
	h=To:Subject:From:Date:From;
	b=GDgh+aDF58AcGojO5Riyg03xsjsXbFwt9lUiGUD4qI6mRFfRpQWAHCcyzwR72zOU3
	 yLy9bLN7xmeQVlwQskiTiV42sjsN+9J+P5XdFXp0lFvP+EKKYs/Z+kkZVHSuPzd7Tg
	 0jquGD1czDhddyZ3/6e/AVe+5sIYfwU9WG/eryu2+l1fox/Olgt8y6At43qu+jbYVm
	 vPGzwuG9gmyRHOouN4dkwDlt2l5P5JgrTOD4hdG6nql3rjQAwSWtDIbHq+l8D9CSSY
	 GTRM7ZA0Fhy+lSWXQs2Ks+0kMGUIfrvWeTz9G2wkt0BGAMknX6Vnx4azHGpquXlx4+
	 49P/vS1iSWf5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B20EB64DD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 00:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168998472871.30997.1161651916780170091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0a0b849f6988c9fa436b0a3ab7cf24358245332b25f3895e1a51d64d575ebb
Date: Sat, 22 Jul 2023 00:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689984728
