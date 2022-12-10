Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3877E8
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 919C4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670640687;
	bh=9UlV6RnZTnyn5EIBOLSd104IM0/6zBDzs+CWIjO30ZQ=;
	h=To:Subject:From:Date:From;
	b=pUGyG4dmIFx9nPW4SVZw31VH048hR3c8jCtMwHxlLrBJpUP2OmstOW8vmFl/Lc8cx
	 YavvbJYSd/itT4GTRz1Lo5bjn34ph3+xI+1uIh9vk/ozhuMcwxksqx2WZJ+UAj1neP
	 grKIl/C8dCPi7leAmDge3XFgcHjHUrNaOn/SlflNu0B1Nw7yEbYys5GQyrb2nfcvZz
	 o6eB9sgAI17wlo/Q+Ldmri0Q6VHXSoheMDVQyq/IQf3PwC4pypMFE/zpv8ARvEC0w9
	 KnC5BW2G4FLwc+cC3H/tfmRTUdnI3om9rhf4NeWV5D+vNVZNGjMsNu29irklJKFbic
	 odDT6U984rIlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7C9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064068741.19555.14947779969765405968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c7e03eb60fa7c4aa3691d19c9c45c3b74b8d6bd900442ae6ed4cfbea99230c
Date: Sat, 10 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670640687
