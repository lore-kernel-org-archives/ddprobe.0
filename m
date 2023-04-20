Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3304C946F
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 23:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4DBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 23:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682035025;
	bh=uo4rQn/yStiT/apROR5A7wDSTaKMeQzlV53LXBeYWhg=;
	h=To:Subject:From:Date:From;
	b=Q4WXOL1u9IFejUZvSJ6je7icrzxkqbrdqSOykFWDRI2TlfrmfMwJ9EUzMbd6fNiqG
	 3ODaN3Rpxdxczjhc/rF/b0DTB8WNGmZlhR0UZIow0fKBTR7gjnRzjjrMVKQ2NbTYNx
	 b2WCnZ1hvhS3STwQfxMGDzOvUf7bIsSo6jEKwyEA6OpvdqdhSi94kovbiXCHV0PRa6
	 HQeYgjXrFvCeialk9BSRTd2ANu4YqDXnwpm+PyEi5s7oKo+lGPGVDsNBBGqk3l4vJv
	 rbYFMuPxTsMyuDh75vxlFNIQJrTAzf7855sdtp7XOHoCeSqzXyXzDPQlNzLnNQ6Fof
	 QSlV5Lsih3qog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28D2C7618E
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 23:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168203502578.25469.9100285006220099413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b407c491f0988af768bd5f3df7ca1703d2df8462f4f82811cb2b41943225c6a4
Date: Thu, 20 Apr 2023 23:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682035025
