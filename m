Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F1E17D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6931FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666336853;
	bh=hfMf9JAFXO4Odat/KAkV6resjtuMMyAMRAedvSWlwu8=;
	h=To:Subject:From:Date:From;
	b=r0cKLIex2xZ+tTu0uxpgt213ht4rSgg+FelvE69B7LqTZqd7za9DymB2MkjHNyR/8
	 FjPjnswazBlSCt43FEcIlZ6IxQtbi9JMKqgxsXNh4QkUjdu+JoJHPTLnoILqdYT5O9
	 1Ufgsizlrk2C5xUHW3YU0lgu+MTNhelb6kYFPyIbW5HHbbBGrTIES2aif95oFAsoVQ
	 KWLaEG6P8bLrsNx6OwZo0fB1LqgUfcQa3DwEvFtg3RFYsk2OJQKakrX3PK+O32dBO2
	 9fturOP10JHGweqBsoWT8Iu3SUpx/vlrE8zKYpgmyV/JCM2ln1NcGaKP7fiAHNITZn
	 dF3fPakZYz11Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FBBCC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633685331.15332.11729551070685058179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 804a3041ff08f743d31fda0add40b98fa6bb06739710c8bf1eeddb67c4e6e7d2
Date: Fri, 21 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666336853
