Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412D8A50
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 05:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUqUSYJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C332FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 05:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697519228;
	bh=ikw4ywrJAjfK1r2acVIvz3CjVi97vIY+jqMgsYT3yBw=;
	h=To:Subject:From:Date:From;
	b=EUqUSYJdhNxwrudc51/3lEaZtXfgICKpPwdakMDiGwqPJwR5wbFTyznIPwgojGwTy
	 LBe9lZXE8qR2O4ex3031zz9hD8Il4wE4yIxojMaY41zFwd4rAorOeU44Mw1p/+Mew+
	 OJ+SdsB3/vbTOsLCE6T+lrW0+h/1XO/aq7tIrjBJejWFCvKIs7yKHBSwqkjGZmPYbp
	 eymParUzgGtpPNMZJZLKlB33Vc2lGD36EPzELhj1kcF5SIxzoMif0mcW9/tEb6NqRs
	 2QYOuL3rZnxnsPonRH+PICSKgZI5Ob9Mcr+BVYIILzZA6EOfgehSAzYabK4M3OeG4z
	 dvv1uJGqJNVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A44CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 05:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169751922867.13896.11046078768713671701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e35657e092ca6032b9b6d9c6feb3f846c59efe1fa86cb437d88267284e9b75
Date: Tue, 17 Oct 2023 05:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697519228
