Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CEF65B
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE9EC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661931053;
	bh=bmuljv1DGY4kS9Po8OQ/j3z419wefauis9JKBW6HnaY=;
	h=To:Subject:From:Date:From;
	b=JeiHsVSu8AzOdwDHgkBEkA+0zVcX7gHCkNF0pVPH4C2eU5B+mlbHfEhyvE+oTQvma
	 AXRGAj5Ne0eCOhnz3mJLkoIB6s9GXszNfY7CiDCC3E4Sw+u9glkjkjMu7QKJtiCO23
	 0CtGbQeotWNGbuloJUg32Fe7XfDfA1AyzpjQxU+IuAnJVj8r/XsHDl7L/3pV3M90mC
	 /8h1q7Up2WvPAzMOZ7XV3RxdO9vc/KguD80CN21WWuKEfi9t/IW4u8MgGlYR9rGTk6
	 cRYfmjVoQ0uLRYzcQ+VsouiG7QrKSyxqSVM87P3Bv5Yato8aTQHz9BeaoeCpowwkcf
	 Y5dnqxUErYn5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F62ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193105334.8120.3377148567694763219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb765de79fef7bf6409c3a91af3a22740a3dbe1cbd7e2b4b331b4b7075161ce6
Date: Wed, 31 Aug 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661931053
