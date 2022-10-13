Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B552C9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73111C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665667253;
	bh=jnOS5s8JfaIKCLg7bUrdLuChSkdeFk34SBtVa5W3Lws=;
	h=To:Subject:From:Date:From;
	b=gDN5QFRSCTHDPWc0/UY8zLX0p7bQgOqPsgbktZ8h9+xIgct22m9zciqVbJ4M0Iyok
	 Lr2YwtZGu3Yd6eWgFBm9b2sazJAJTV1BTWSsXH4+X02yM6xCQRrJZUKfsF9gdBV6Xk
	 HzneENe1LxL/62U/AcD1OdLqWVPbeC8eT8afjMs1KlfJD9nS1wmMHCq3qEOHnTpYhM
	 Yn5l8ZSfZuj9CUCvByQJB9wZ5F7tHl56FN0TTca6JNXc/ETvAU5/OR/bgZZfx8PfS2
	 qLz5ryT8/EOp7fdgBK1lVzH69FXKjnJPw4gEFDVi+Qj+Ij2nnozou8DK1rl9UMMUx/
	 7vs+A/2qkSHtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA7BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166566725336.984.1102479960533136549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb20778b62d4a03181a5131426182143ea616bb91384eab9d8c07227b45ac13b
Date: Thu, 13 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665667253
