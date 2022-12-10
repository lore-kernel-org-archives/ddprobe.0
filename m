Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32551109
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB09C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670668887;
	bh=SqwYCRl2Fqw/kpwAvW+YwUiAklZtggqna28QKK24RdE=;
	h=To:Subject:From:Date:From;
	b=WWeROr/dLFZtyMCJiFN2hbUwtkjes3qg/tQanvOrfc63KEQq6NB5pAul2W5h/tCSC
	 iqpN2gohfrExWGj1+7hqENcYG3OJGPA+kh71kHqIzcoo1cOEW62F3Kfg8agAezubGR
	 SC1qsGwEryw7Kj3VBUb7nh+3rR8uC37iCEGzJSitMpqykWPzlZVZg8hlew/kg+YnqA
	 fN9TqPz4bpggjkQTuNl05t4lK6NHh41q83bRW8+o/9f5ld9pejhjv0J6t8pxcJPaZ1
	 2OrLM2h50LYzqansczS2CZTeK60sPVW4EJKtqjtB7IuzO2Y6fGJpLkbjDVNw/6qRkF
	 u8qD5FAi7Gxig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A2C0C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066888746.17846.12733988204415677931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6afbe46db97daa5532a26f8a450509527cc982f0bf32ecb373f92ef2bc3174c1
Date: Sat, 10 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670668887
