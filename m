Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFB13D92
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD7FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663188053;
	bh=1f2m19CNQr9rRgUvHjdbs5cZxkHHWoJmQw1t2CJ+zk0=;
	h=To:Subject:From:Date:From;
	b=MByWpPzTxb6wEkz21Lq3Nt1XhK7BfJ6zyJ/3s+5YTEXmdnpQoTSjZk92H53iziWtk
	 dsE4myrlSde/WtSW4qDFbNvjN+taolTAqgcD/Rep4ORL+LfOz8GYuvCE/J+cROillJ
	 f4iY5oSjwOLnFVJcqyijBOxc45C/aA8kVPb/V+WDtySE+ZQbAx7NAW91yQyOoMLar7
	 /mv2AMfqehSDpkiIif+ais2Rq1z01XvkKkIFnByk0Gv66xX2ZWJKB8kqpFyuPP8BI7
	 EqAr7V6LeL8B5SuMCwPsmYZ1DVJj4LPm5Kjjrh1Ds0kz2u+OeuGSbJjEAy6br316QO
	 EmaytpY9L+/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58978ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166318805333.7794.7941031171535074466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4361d9edf3902ab1ddb4e41f7e47a2afc62f4f385fe70d65585c82aad1f880
Date: Wed, 14 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663188053
