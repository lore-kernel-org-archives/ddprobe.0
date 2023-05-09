Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43592F9FB
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 18:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4931C433EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 18:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683656465;
	bh=1iUH+m2fCk29op7m5y2yuZmjJ11BiulR54FTZ4jW7bg=;
	h=To:Subject:From:Date:From;
	b=GPKf2NelSHtOMbLsPEPdg57Jml0fgWo17I3kXKP5t2b1+aurjL0fHQvOH22xKrzqB
	 BH/SGFXZLZWjkJprMgzImM32qTlwCNpw8L1j9oQlDmF3CKzpQf1SbH6pRb9vIba1K3
	 7o20c6A3nCLdl+hviWb8AtNBFLwVZ7YXEyU8kEhtOa9xegmtlCpoJdWDVEjGrp76pm
	 uMVzjqjvGNNz1dv3AYXkhKtMTZqoZyqRMrKmCZh/0sVftTv0Ip9FLpI7orQvw9cAUk
	 4YX5ku8MvV0dW7WA0JOEbAY/ygTB3aG1LZipjbDc9OYwf3N51ww9gL4jfgFK6q34VN
	 kImjlE2fUV1Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA5BC7EE22
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 18:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168365646575.9559.9737453200208743228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbd3349ca4fcdc9d3eb3413b31b5a399b96c6bf17e78a29d96bd28e1c82ed4d
Date: Tue, 09 May 2023 18:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683656465
