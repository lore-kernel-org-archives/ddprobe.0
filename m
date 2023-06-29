Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC1719A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 04:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E79C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 04:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688013788;
	bh=Sv7lguj2MCm/lbsxid4xFJtPL6cC8PVlsnvtoHDnMYQ=;
	h=To:Subject:From:Date:From;
	b=N+cPG1T1QNoNkmvu6Mf4uCVE+t94HtlWjcBi9vPa6blaxclvFbPZw0tt/ilN75wE7
	 +bhofN0isLwVXfWdkuuShBYoxRZe/tOHVeUUrO7Em7+ca1W8Qi7TFNZNHuW+k5kaxD
	 fNyQetioCuRVy/2sN/Cv3YN/Jfe3r9XCTk1yoNtjPemF9/u/je3mYpOMj8yoVaksoO
	 iKCsmS6rzfJjQvv/SwpeXmGMkTYyB9xP0vOwiKPHmmmnkw+f7gUbxnWGz88KD8mQYc
	 djIRJf15gK4VYbQUHFfMHPSg4/Eki9t1gD5ULFBR0HuE6v5ZsWj6wQibr6h9IWYI+r
	 zaMUca64XvluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3F2EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 04:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168801378868.6583.11513804002981910044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b00e2d8256f7615ce008be1ae63c03cd69234923a1f7799dfa2d523a91c1cfc
Date: Thu, 29 Jun 2023 04:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688013788
