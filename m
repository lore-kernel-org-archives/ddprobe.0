Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610D55662
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAE9C433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693560248;
	bh=XaMTsaaSEVtm7qJgS+f+5ZSY7uXD/S8nrBL1MgS7qnE=;
	h=To:Subject:From:Date:From;
	b=llqWRLy1w/N0z3tEmpKyS7fSQ8OEaD4FLDGKK62APBqjNfzlCKHopwsJuIDgsUfqu
	 Q4J14+RirgpO6U3XdC0xC4V80AB/0G8H9aV5CSkSxApfDiYZGAStbKWOfoeBa0ApNo
	 AVst135pmjF5qP9Q9fXQIrl0hIK53FrMLV3GEYQWMtpVjuui9HzPSJjCSc0U/1FD1P
	 pnxcrweFt5EBOZt/dpbjpGohqxoXb4u2dj0S0FydHNN7z9sFvxKg+IV/zxpNPIu8Df
	 NfQtG47DTZRsqTY+59KNhiQzQk3c3HNZ8zoq5D1MO/6OoVD9/XKKE4Y5IWsjCrGp8G
	 XdYcLceyLswzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4188CA0FE1
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169356024866.28564.15344678817946387812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1dcff2aec50c8fe9c17e6c20ddcfafa08960d82a8bba0d2f830f14e278fbde
Date: Fri, 01 Sep 2023 09:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693560248
