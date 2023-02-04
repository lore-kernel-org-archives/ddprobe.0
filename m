Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D03510FF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 01:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33B3C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 01:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675473365;
	bh=mqcTZV0K9MKBG0bBoTUdy/TC1TGvOAPvTMRx5NSnplo=;
	h=To:Subject:From:Date:From;
	b=EHPF0fNgYOyl3lqhzlzh6IKP/ySM8UZTsRwVD7U/Ky1ojwupUWqjcpzT7TZpacJei
	 GB2FiacZEuGF/zPg0Ifocogy1VWON4hlEeS1vokfdmjBj+u6Qemi8qVk6yVnaFV/wc
	 4gnkTbWyrjLr5yaEFlYxdQ91YM1WW+iUdmWqao4VsvgjcGOdTBtbA3+hPWiq3qfF5g
	 4QyG/qMzK1iKr2b0sxFXTnwP7tiYWTkG28yM5jbiR1MJZjYZJmF5x5jX2TXIzMwhdU
	 yH9cVCej101OH48fcQjXiv07yVREQ6ZjE2YCz5iI+/1bDq3srq0UODfKyJSOd+npPa
	 V/4EYt/AnU2Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DA6C05027
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 01:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167547336578.15639.736512383756704977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30edf9ad541ed14678014b93c4abc595ed5cc05f3ca853649ff111fbeb29396
Date: Sat, 04 Feb 2023 01:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675473365
