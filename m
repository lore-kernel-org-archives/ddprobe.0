Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D0923A3
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EC9CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666953654;
	bh=VvY70sWhUEUb3N2Z+fi0KSdtJeT7ZRfPeycx0TOLRVw=;
	h=To:Subject:From:Date:From;
	b=MdoDE3EUjd/s3PS5mZ7wEpkBCvAcaAO6emnNvROLatoC6sL+hOm2ohK2SDeK2Bdko
	 Bvfo3l5ea4wH+PTkBQ1mOwFA2KS/7p0FBe3EgkxCbpwqvd34CW4J30urZRfIsUNhKn
	 lkVaBpRu6ZHPwZCQRFSRP1JQrIms2pfKp6gRlPseRvBX5yJ3F3nBdxzWOJ7zG/Dw6K
	 gFxvBBWVFm0DZpnw0iMuIlCtRB3F72yiqxUqlBcKA8fBid0PQfHfURx5ZwdcrBZWJY
	 CEo38nwKSFT7AP4AJ8BlwQEZrRAguB0QBUXHS1r+flwFZ36wFquEXQANSLMi5pmoTb
	 67CbKNX9W1Qng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618B2ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695365437.24132.15910121389261360691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f186184996d70315e96eb1729243fd47d5f43b7daf11844679c152130c6372f
Date: Fri, 28 Oct 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666953654
