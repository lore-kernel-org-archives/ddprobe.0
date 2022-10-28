Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B768C23A3
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFCBC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666958454;
	bh=/kuX9I5ovlic9/epNuoAYgsMnCPXwmLV1sOUjg7NU+k=;
	h=To:Subject:From:Date:From;
	b=L3nNEBCwSeJ7w48ExDr9if2Jlky3JCnMiMrxHTfVGyP1RHR1BWHelojSxDXE8NtWB
	 Uo/c04GcGG8QuaYNJGrStxmiMDk8RNFKtHasNneYVMauQIFdMfkpZQi6fhblb4UkIj
	 +kkQlLwyxTVAR43Sq9ihQh2VcDSnpgpBcef6XffrtKFlZKnS7bicAzKo5GFggf/QoZ
	 ixJ/gjzUmVeyxRl1U4IUZ/LHHEvK1E83yK698OvIdh9rDn4ZMrsh0muGqkOtqNI/D9
	 /NF1HiEKiOqpGsn/zBiiluD9/4VN6GLFQTQxClTQgHv5jezfJf67zjs45stGoglC3S
	 BAZSIYDNUvCnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5649BC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166695845433.23140.18151804931911508857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb150cb8fb9b6b4a862de0aac130141f6add25d424dfbd9d9c53e11e5bd2ce2a
Date: Fri, 28 Oct 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666958454
