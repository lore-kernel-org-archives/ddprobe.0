Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E71B86ABD
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ADCAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671915087;
	bh=PnAKbOl3rGnhFUS2UqeBnltvHdCc4u0ldQMZ9ESdMQU=;
	h=To:Subject:From:Date:From;
	b=fU6h9ItCOYZ0fazXW0VuPiKAvagahF7pFvuy6f5gEYZA30wP3RKRYX9ixNIBjRubY
	 0KcIFkCOHqSoqYiTK5/QTx9/npKxjFbEkzUErAq3ZaVu9LxMW9Y+LEWiqEf2/70VLs
	 ER+uXO9d/S8hrIZGC3f94uPZPBoeoypqN7hlmbYU9HfNRQDs3hmTcFfIVyBj2FZ4Wt
	 wpxn9fcLb6K4iowQPwB+ro3xAGMmsNcHLuq5aEhPcYehbn4FBmWXJLxDSKhZH1XVSn
	 StJAoKw9gilm7igKghEu3EGOBdcKTJaE1j//PcSOVoZzKXN1c7vk5hTw5LEm8f/5QB
	 8zRgwUhFKXi3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E182C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191508741.25158.15227218334521208109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a2a254b9c1b5fdc947f53f80fc01bbc05fb8c865efcbd537279866dca9db47
Date: Sat, 24 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671915087
