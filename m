Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EC31FA4
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGKjrA/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78075C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700448496;
	bh=HZsa7DMhjKV1M16DizkbNsBnsKzuhmEGvZ3TU8wf3+g=;
	h=To:Subject:From:Date:From;
	b=LGKjrA/CbpqlRg/JBQumtaxn1jS0LW7cNgT3CAGMG+73W4uGQLzQm4fX2HaMGj/mk
	 R+iALFYwlu+r8pqAjzCWvqZJZNzb19745AJad03EMmN/09Nuedn/3RHykvEdTM72NU
	 mBAu9kR5fTeGI9E/R0sYgaKjAQA+VsUBmBnycC29ACt0sNXQ3Pdmacq315iFvqawmu
	 I5XVVWaVXiiFCq44jQtTfEvr+jodmoPpTswKIiMEvVh8wk+ECSYhxPCGaGmwKZ4+Kh
	 tUKnxpaCRM8gXX0QSghgzKsGbcxgrV0BFDu5nFd0ulZBOspPIn2r7lMpot35PVG0/F
	 1u4cehjq5sOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E7C1C5ACB3
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170044849638.2658.4505877619138817367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1683c0af257a1ba9d210155693adf9175c91c396667911fdc7656ae3ba5aafd9
Date: Mon, 20 Nov 2023 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700448496
