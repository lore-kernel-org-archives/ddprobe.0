Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2087363
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 00:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A749C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 00:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670545287;
	bh=9cJ0SitT1iDANtk8k+OSW1u2tmNM5ISBeXSml2x2B2E=;
	h=To:Subject:From:Date:From;
	b=O1r/6jzHcEEQEaYnVpT8YSUj8+blHkFECl2EsrDrA64WTEihq/h6bw7uuWz4gHfTy
	 UcerNfpVuKrsJDXY8ViSWCDqV/ZPqwmVYffBHn0WIk0jiSDJjaD+3fTFDNQAdhD/q9
	 KcAFRRcLn3dMnNgPO6x0F0uIEsdBMtjrErtr/Jyp/DbIzVvqdd4oiFq6IpBA4Jd0fZ
	 gfwBxP3t/kp4cF7aVM91HxaL9CmI85cRAns7IyP5SzJ/OOuJiV+fOtkmSrTKWa1KhT
	 VtusfCrJ0M4zVRHybRhQei4LS38g/BZ/E7yohOEzuJnBopPWQcB+5j3EbnASet/F93
	 sMb4mAwIHhTsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA91C4167B
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 00:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054528738.10235.13328197769277042816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df41c360d47ead501264ddf2bca1d8c2f3cf200b6cc35be20b2b9d29f94afd4
Date: Fri, 09 Dec 2022 00:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670545287
