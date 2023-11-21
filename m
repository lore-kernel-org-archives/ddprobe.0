Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091F73BB2B
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBqnRjyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 866BFC433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700606896;
	bh=lL1sFsyi5MTIKBKStV8jXRDpUpSWOckGge41uxqco5I=;
	h=To:Subject:From:Date:From;
	b=oBqnRjyc/fsB6ctJD+nVYFxbyuXBdeCKc0mAJQ7+cKneGO0CVjJDmGIHytqpQl5he
	 2fAdAMXS09fp3+EyaBelXAmvAtIX9HMPzot1rpEx9HEMAQi99jHpTsPRwCwayiQ/50
	 BjGOOnHC4ac1TSyk0cQVbY6HyCr+s4HZmr3emzanXFEIKFMg1fr0nlG3eiBF+k24nf
	 YzcJ/5Mp3xv3FJO/waLn+61ZGt6x1TWsbrWQHorNz6iO1U9PcBJaiObaqYSnjt1mzL
	 VM88sCYoFuwsYCq92jRQAe9O8cb5vbiVWadKeuYHhPYJ9VAU03cM+LH+lRdewRXicq
	 llGYE43ASd/9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F40C61D85
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170060689641.6068.2844401326823913892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74cecc8ebf4ac032427eb83ff2805659313bab1957fe3e9bb72a9bc3838e8343
Date: Tue, 21 Nov 2023 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700606896
