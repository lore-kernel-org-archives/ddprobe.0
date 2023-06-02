Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CE6332E8
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 16:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7EF4C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 16:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685724425;
	bh=WU80enfktIN9icKF7mIE7e4PW3oVqyWxATFBzqg1nrA=;
	h=To:Subject:From:Date:From;
	b=os0684+iL9VseGiKegOdjCxHEegv6+I4xvt+RM/WRiTZU9lDArbY66VGLBt8dReCT
	 pSrGvtzrMVw26xUrphEi6jA5LPYRfccdRY+nIr9wbAsmopxlirx9Ea4x3s14sjwHO0
	 T8NzhbMlqCOxEHDq3TzVf3XjHRy4BC0ZEUMvkdHLbf4FblV4mQ7YP88rRwCtoS7ZrF
	 asPKUz9EaUubNuc5XP55BcuyciO9LmYYvQesP6aYznkT99s3qaZyFIphzoL97A7od/
	 CocUnR+kzlvB91o4xM0hy8MLoUQdSpsbPiuZr7S5f1btr2c5Umn3LMd/wQapJeRpg6
	 JwIKBnOCiXS2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6974C7EE2A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 16:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168572442579.4498.10211812383090665541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07358b39e8034980031e04200b142b4241bfd0b00f2ece050671a94d083e6a0e
Date: Fri, 02 Jun 2023 16:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685724425
