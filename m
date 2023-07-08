Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D96A941
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E67E6C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688846828;
	bh=RXhjhW0NvKNlVAkhJL2GQTQCe1x149dDXZmKF67Cu/o=;
	h=To:Subject:From:Date:From;
	b=hGG4pdzv9NvpbykYUraKRE9BTLpdAfvu4fxjcBCHvWWyLbhp78pEI6cllCBo00TmZ
	 HKohvigZJnDdButwRpkfdm/FjiThTvJ5B5qCaj4zbg6dq0HyZ9KTYqt+UR1Bje0xen
	 WzTuh06umCDCbdIQkbZYkfgi20p9vtMg+sMjggcZ1bvMncySLBYcURbapQzacbThYt
	 iygY+XL6fD4nnZVtNI808PBfAhmT8w4MJYV39nlqK36/8YkEmD9OtJOX+G9KWt0wbx
	 6mkbOyvLapAMQZoY5UYVXZneCeuLSzNMDZNlT/XHYWVq0N0ocYGf/hiIllfoyCEQjt
	 SS3b3HHFstiaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBC3EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884682869.9123.683508929328009780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed4fc813435b8cdd553a8f263a2452075c2c2e0d34ebacd3492cbf8fbbc0e62a
Date: Sat, 08 Jul 2023 20:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688846828
