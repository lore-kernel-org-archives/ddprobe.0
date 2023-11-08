Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1476ED505
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJh33joJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B6B4C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699430296;
	bh=a5ibF0fAuuLfjLyIWK7QmzUxMj2iKN6wWsZochZSzEw=;
	h=To:Subject:From:Date:From;
	b=LJh33joJV5vaS5vOyYvzPS+uTfGoU8RC+87nzvXccxytp5CtyoI+UAFuc5QE76CT9
	 nFVBBZJQ/Tk5yyMx8L5Bni1G+2VjpeWG8PFyqBhJOEuY+G7yMgX9bXO9MKk4BJgpiW
	 DnHim4pUn9S+gyCMaJsu4diwY0WDGvagaagkvWJci6iD+srK3a0Huo/7VhtTJ6kes2
	 EvVYvn5A9bk9SBuBT6fmKwIm/y8SjSCC1RUpiNjH8UvIvy0LQCk7crm0jmAT5dGpbu
	 tPJP1ttCUm2447p+SoKCWi30LcFUaWugLePtzw93lpe23CpbCA8+U/mv/9iHbYmIJs
	 E95bwwQoLi3lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6D9C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169943029637.6809.6406798661562078758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8030e2838cb05822e181d328c7c7174db20f7fa64309f362827d1ca1faf83954
Date: Wed, 08 Nov 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699430296
