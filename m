Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA8B1D95A3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746097794; cv=none; b=tlIuXH2u/RUSC9u16shyOqE7VEvJQKQ98ArGdJ5rQG9AswUYr+7I6U85Nf2LEAxz2ZiWnKJOUMmqNhADojsbp0iD7J0F1IUZVoZHWw3+C1sBzRuH5r7tTaSVWZ7u/b59WgUthiIbyY2Q+NakKJaDE5by4G+VY2icjryJfeiMmCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746097794; c=relaxed/simple;
	bh=MxR574Gqm+zRvMPqCtcIabQE9SQy/EqTqo5UP0WNg4w=;
	h=To:Subject:From:Message-Id:Date; b=MvDW8pe1smk+vYnlj9XdxEU7VgINuRbOyf6Q1spNwuwJDs+9dpW687m5TwJFzynBuY5jj5Y/URrJf0Z6k0KSFmRArEl26I5Ko8t6RacfJ/qZsscz70RECx8mBmOuiJCM6sN2N788WuoRt1dq1Qbpht0k0aC2Mc+frD4W17hj+tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcA1Y2u8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcA1Y2u8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C10C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746097793;
	bh=MxR574Gqm+zRvMPqCtcIabQE9SQy/EqTqo5UP0WNg4w=;
	h=To:Subject:From:Date:From;
	b=fcA1Y2u8JirlLzOqJsdd+cXDJbekVlEqOJM0KID80Iyc085+aGBe8jarV9AtQrHNo
	 HRzN4E7GCxtxbohXt7Okq9hZ+fGQUeUz1L3MZmXo/Xg9dVesQqFWfU9pHEcrZzsoxf
	 c5FjNyjizpSNPkUg9gq9WTNCm0ACY9mLoxR00v7xf3UKlpKEM4K9gtIjWd1MBGPUqh
	 2nKmNA8DxXpkqd7er9nFEa0ufsyBFUQ/bikaZBJg7eLN3bLh+iBCiZMjetAKcInjdk
	 d/bxAHvFOCTKKtj85J4M4ND6owE6V5dsQgp7tvLR1AuQC5x5Had5aCEZv1aFg80qIJ
	 yMAYzk0zBiDFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A67C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609779357.7779.17850488963983846640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90ec050a645c4fa6d67e3f23e252074482a6ced032215196aff3d5ccbeba3016
Date: Thu, 01 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746097793
