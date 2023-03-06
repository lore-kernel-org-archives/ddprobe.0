Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313F27E
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 08:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB15C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 08:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678092425;
	bh=5KgO1jbUpQ6n5KEKCBStoNkVRK5Xr7fqqERYY0Gsjbw=;
	h=To:Subject:From:Date:From;
	b=ktbUp1J+Mk6VG4fHg3HprKTCbOLRT9p45GDITW1pg0jsEAlTUIX6nzOCg0bbiD5ZN
	 EKAecSc1IuyQjwooz6cmwDLMLyqRqJBwglCDHvsJjsKL2QkFzBkB34vV7gA5ZTiXvq
	 qA5ZI9DEr4R6SAIr+SWlI5ELu+MvdpiwaqZV1yEw9Jy7kozsxrsvV2tOPYOc8Z0mHS
	 KvM5Qg/7c2I31GmYAh0nFX0h9ZxBT9QMH44cpE3TBnPWRueG5Fx9NeFrQFtGVnFlIn
	 r9iYGhltxfr5tX8EwdImrbUosXYxxqi78vA/kXS+CMe089FXpt2mZOIVbLRuFnhjJq
	 SQDzIcD/5RPMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D41C678D4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 08:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167809242572.15636.15285641207358621769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4368cc0e39549b439c057241e8782791193d4978fdfa7a94c765161efd845bf6
Date: Mon, 06 Mar 2023 08:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678092425
