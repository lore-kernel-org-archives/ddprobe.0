Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347C2627
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 08:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF53EC4339B
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 08:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677573365;
	bh=g+LbbXzYyXBTwy1yIGY1VYiE/Z7WFUn6tbFFCXfnsTE=;
	h=To:Subject:From:Date:From;
	b=K6uTh6lnQXEfRA0vcek7A7Gmt7wWXB9sMb6htVKAa4PUGs+1qQ5hCWU3kSHIz/Exl
	 G2sDpyZa+NHxUI+KTujBSmFPejLhcOpufVkVI9s3KugJhWg1bM+oAQ8dKMRH53fR+r
	 dXZpspf7rZ63bndDzc+Q4CJHihv9+6m3HBxFhejvGPNbfQsSHcTlEM1i5qaZPatlYD
	 9ZwPJxmJoDmW/kXPh++efEnH/JaHgknnk1pZilB5qbP9XFZDpBwvFV9NbUfhSs8owE
	 q9F4jctG5qf+w9hb4st236Z8TZ5LhJmDKfJNL0yDsAtM2Lqq2O/kL1aSGFYOzxxglX
	 S6hd6PY/Mny1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C412EC64EC7
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 08:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167757336579.26441.18445624903842586949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def4045f11587c9f7bb6e07d667b1dd710dfdd3bacb3b6401c00b26a5e6f7dda
Date: Tue, 28 Feb 2023 08:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677573365
