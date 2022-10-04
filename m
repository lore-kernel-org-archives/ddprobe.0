Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FAE33D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7119DC433D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664905853;
	bh=tbc2rX3fhH57wPpyZIHwypwa7J6uAPk+8wFizmfnsl4=;
	h=To:Subject:From:Date:From;
	b=Nlqt0/vR2O+gTMX6JYVHqgmY6eWCbWX1zIFJ4OoQDwJ+DR8jfIyoI8COB7HjKloxD
	 TdwwUSYhiMoq8zhMIN+ixXgea47HsXRsjY0FQ1iZXxaMvfzcV2BngYyxrh3lEu6Uvc
	 S/mCS+mD24ohdX8Ov7KHfZ1+5Wn8yzE33bBHR+YzU5aag7HrHOqH8EyQVIDtso/Fye
	 ouQMnmn8m5IzKs5uREm6yYAYcBDS3WKNNGMVyPpqQ64/UexWBGUAbUXDBmpoCFKnSf
	 Q5KzRDk48JsrW4wxHNXZABOgBx0tNp7b+kTrzGLSXArFA2UaBuKoW2kwLflyzKNGP0
	 CYe5vWbB4kNrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5186FC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166490585332.8312.13113637245848650157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214baee8eafd6c452aff57651dfb1c4706386ba72982eea44b0295195178f381
Date: Tue, 04 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664905853
