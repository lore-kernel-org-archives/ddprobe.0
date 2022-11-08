Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28702F3A
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 858A2C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667947254;
	bh=tEaLhL7Tozu4P6RsRRv15+rjxv3yvfY4Nsy+wsH2YKw=;
	h=To:Subject:From:Date:From;
	b=Lp7YFVHjKCYF5ie4N98l3R0IuuTcrO1AHVDWCoVF8K+YAGuh3jVaybhMA5hXVZItH
	 QT1VhLvoMcCWS5doA84Vz1AOGQgPAVx2QhUJtczdmr4Qx4cnildMGwvKT72U+14EOn
	 CMBXFwmm7z7lR3jkmjro6dw3HL1bKFDZ+yFzJsWJYRdqgPLMU3Cz+VcnOlf0N4s06t
	 Frvvo7fjcKkzCIetEfWzR01Vn0IarzHvs9jeEf0DVjZiBn3KVsnR6c0iGho6M4O5L0
	 bD3HLGzSVwZ2K66HVn+aSKk2UAKvJwSunEXKsMHSMEinJdl21NL6T1s/FH92wylbAg
	 Foax4x5EkcEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DFDC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166794725435.31205.7999794772753471665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba402b421af8d6cd442a1581e061167cdf082c2b3487e83469420686db6b0e9
Date: Tue, 08 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667947254
