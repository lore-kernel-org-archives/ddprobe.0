Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C025263C
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796E0C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670410254;
	bh=bJpl41VmdMbWvffo8eDN+EuujllHSbCtK9mgoNWT91o=;
	h=To:Subject:From:Date:From;
	b=ZplMpPIPxDVtlZpT3B989xgxmAHhpig3pRDvOjRdFPoxej7H9NpPI1aBo/ZUrbkLa
	 iqJAwaDSqVqEKUlnUsmKp3BiWD/femubAPXvkYtDT0awqs0SR6JsDaucxeoBqJ6duH
	 AFgWQ1l/FklOvDe5DHtuza1KXrt3zen4Sr7huqlJ5/MRlpHCVMhei3BjlKlWxaDMBp
	 DkyAC2+U5oGOUrcYKTKt6adNFM2APufzuz6j8ihm3U8ZtcQNLTGhdovMVQyNSCSh90
	 ymvwQ1yRGwKl3PPsuXOvhikgO3kYRGzi6p+NNI7iRQWj+L4a4pyWOKAQ7gfNpbKdd6
	 F5CQ9vHEHbpDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6121FC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041025438.32244.1957328358409225527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a031bebdeb8cd8392e992d5d640c2632a6556d6a1affd9747849a4634105bae
Date: Wed, 07 Dec 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670410254
