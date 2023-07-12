Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE45182
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 02:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9A4C433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 02:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689129488;
	bh=tZUfGyduqW6E2bFVGnYiseE/OHEhD4O7dUhtG2Nhl1s=;
	h=To:Subject:From:Date:From;
	b=vMcFXIsjbaT8b0ezcW0j2tdaJSgYQmSeeoiZijaInmJ5SMfu7Y4Ltj0Wg7iqL73gb
	 ipnDFyWn+kojCtG8nYonAcs3SRV/vLihIz6l427jSDTA1/QaT7kZ34SaIrjM0MCovU
	 rdF+6RLA7K0sagUDI2jKEg9zkdd8wyVLM4XOoRZknN9BDV+mkNlYFZ82Bu/IyFiceH
	 34itWdMDZKTwzVOyycHVQ0lTh+hq+zm9/AM4szZ+GUVNbc1xcT27pUkkXl5rXQovY6
	 8F3+YRl9ZNW70UFw8pBmsHGcGzNBLx/rGkZfN08RfF60PUS2IaNSPnYtWwXg108iiQ
	 U3FjjhvYA5oYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE1EEB64DC
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 02:38:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168912948869.3680.7803305397880845623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07493fb2c4c66b37e58185872021e61d484864610d09812281071bd122321691
Date: Wed, 12 Jul 2023 02:38:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689129488
