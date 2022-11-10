Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CAF185E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F2A6C433D7
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668079254;
	bh=MFjiYSwbPzTg9+f1IhgZbOVtfQa/kaj58CeuFKMR7ew=;
	h=To:Subject:From:Date:From;
	b=dR/aX8xbjvBqnYLBX3pU0tat0HlgSad/GoZmfyc2vmbCp62ZxYe/GgdUUXPASz7jf
	 dUuda0B5H6UNzVgZYZyCmQ5avXVebARJPQwaDnc3kWTd/gmTflqbPHba4RX02Bez2D
	 zHuFHtVpgf7v83jVZya78wZ9dXDSrxbWZUiWwao3r9vRzPhvpvNCpQec5a63CewiG5
	 ZtUniMJ/ANYHuPJswkaH8a2fHIhrXB5tbMscEunGLIu0wR3QKPcKyIibbqb0tI1uOx
	 PpPtPMFUW0OuwiDbFv7c3Zx2tDR2p++WkqpWtlelPdO6iYvDkkuY2hlwtzXJFQP4wH
	 5FFEF1m8hG00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5184CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166807925432.19608.7864320753756130939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b65262920f071db4e65dd6600555ccee90b054888d57e6f930fa5c7635b55f8
Date: Thu, 10 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668079254
