Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD40423A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A28BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670914287;
	bh=hq4LLj5JwItxypIOg+mIZXN2pRsGJogug85AeCpnN4I=;
	h=To:Subject:From:Date:From;
	b=hhJUhMbybm/ccG1yKZztz5KOxPJN2Ws0Y+fbUctvBehx2tycDOHMP9NIUpHVCCmrW
	 NGX4UEyPgM1UnVdU22RsgKsMHtkdkRBpIxyelQaH9ZNKoK1Zko1AYG9hSj1apNM6Cb
	 jCDcVN3F3Dpb/AaU9xWzrtyPk9oQog58J6vS4K2wdG/9sM8sYvXUislb4CsjSuNA51
	 zQjrIT6sriNZ6021sOkTqOtAXmEwfaY+CSENTDGed5GDjYu5ZDxP5Bv6u1WVtKwjq2
	 ZxF9fN+DzG+QvywVoLyZAmDmhFqrQTyxLrKg3j0ibqFSw3aIUGvDPNzA8GeJ/6IIIO
	 4EdkHDYh3ueFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60523C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091428738.18967.134275890091480646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfac8d0ba6028304603053fceec43bf4757e175d1f6011e82187fdc715bad7c
Date: Tue, 13 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670914287
