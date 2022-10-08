Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCC71114
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E0DC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665226253;
	bh=2SWNjD74YoP2JVftDvE3h9VR9QopxnRQiqDgc7evbcQ=;
	h=To:Subject:From:Date:From;
	b=u5+IbL7XQxI32liL6Ns55fvO/HsL5zdZmyfdzZYd3NTKlQqHpbKI67ioGmzBEbN+o
	 uDfx0HUDqhJ+bAr0cuOQ1g2EOctzrkzCmj5+w4EwAteDlaDYPjR1Ounqr626b3C7e2
	 aIuvJd3n/PKq35YU1FPLH7yW+VThMhnQWF7YUBl72RcrlFVGDWpfU3TF1GDCewO5KQ
	 Wy6/tDquqWuwiuqQOs79HwcYTddoadlOfZc3knGWQ9vfEaxFnexHKrYH/KxCTy+q5Q
	 Jukaau7RiTAE6r/5NIaDLVxnjd6xtUDEcPCSB8IJgWPX6uBeLxq0vk5Z3v6AUvI8vE
	 +FW8rEMlQ2Snw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549EFC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166522625332.25633.1860242930269837864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19aa464fabe065e9b9785707742be797ad4658a5375838fb1c5075e2eba125b3
Date: Sat, 08 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665226253
