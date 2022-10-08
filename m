Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B204BEA2
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72255C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665192053;
	bh=mNh3yWGJs/hXpTU8VvO7VHuTqZEvpTYamk/HvcBsS8s=;
	h=To:Subject:From:Date:From;
	b=o/tu5ur4ds5Fyq9TcrU1mVTbVzFpCAfx8kkfwnFvPi8cAMp0Rb4wDTXRVP4Y46sNk
	 EJQl6GFOuEqCygwTLr3FGxW/03+dIfAqyR5Lgl9WN1q8oGEP4sxsp9Ud3r/220EIPT
	 bJc6aP5z6Bf5bSp5wgT3cdtfdfb8UhRZi/jncS/1K0FptMXad/QQe0oYMctiWxk//P
	 VPpSGlkNTCc+Gj7jnaAS0zmEN64b1oW5daonzNQ0Jk3aHq9bYE0eOQJToYqP6DPh1w
	 2qZNROIbODQ6Ov73kECqzJtx/SdD9bPmWzADd87LSyuZBTr39COZShiubXqk+I2KU9
	 YVojUiDaWg2Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B47C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166519205334.5385.16289630421293873537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe386dcaa708bb3e682982132d21104883d780732f201938ec826413f65ec76
Date: Sat, 08 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665192053
