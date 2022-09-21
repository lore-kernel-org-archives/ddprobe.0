Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C230A7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B40C433D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663789253;
	bh=OVmrjUtqUZdPC8O8ayLkC4UZbdVc7mhHhlPF+A/q3Eg=;
	h=To:Subject:From:Date:From;
	b=M1X+/hSti/iU7LbgW/fHEWOv/Fn15ryYsTB62B6BDc0dxtl2WVCxDNMnx2YMgB6tB
	 fVj7SPNnlPhBSmeA8ZZVPhL7k2LcGmx4q8pl0+5o5ZJf492U+MimG2c+Fs8k1fcJdj
	 OMlNZyyO9zQGW5w6lGMlFJwJtmWpdt5BlXzPJCcI1XZYTimZ7gcHczil2DT0f1Xi2D
	 mDlsVhhvd/Gs2TY5o3rjb3H+FGYnEqOcGMzvKP3IwtZeYl2Cup4ORp5hpJLARtIfqF
	 Wy8CxLZZIanqfbOaRTiy5f5XZ+ZY3EjZ3RTWurJgmJZw2aD0KrvrIFRH/Ab59KwGsR
	 dXXzp03zSHhPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 566FEECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378925334.8928.14887524986449596116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62417b707be94984bfca1ade512b83e8799b811d314b96a5a57780538e4b968e
Date: Wed, 21 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663789253
