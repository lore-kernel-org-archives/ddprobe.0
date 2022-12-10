Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBB6A5F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7391C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670643687;
	bh=VehR2tCLnyiCqYYb8Q/IvhjgLTN29Gbir1sZ/8lbgzc=;
	h=To:Subject:From:Date:From;
	b=Pi4tZTUxMD5hlN+Y/WS+ZhsnYzHzounZJy7A9EDiaFekk5yE58xxOL7py2hMF7mw5
	 xnEzJyPJp7z+tOMiQnJ+4ky8IwOlgtPBrl3mvhtKoU4SIQL/+5SICJ11LvLKS7VtKw
	 f+fpnp3TySWsmOOM1v1HQ+DWGNrfEeauVfAfOJdBtfJzS0XU6knO0ObDchl9PaLxya
	 fRhAl/tRPSsiStpdXjTnrwX6HaEf+e/W4K2UUa4COsEXU60H1rT+SJV+hdCZm5Rk1e
	 o5cdyVa4FxaITxoWLymRw9ZB21NhfojzZOs4eftTXYMfkeWsOjXAN/nnWZqgcLEt/H
	 cXdBY2BPLDLFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88EE4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064368754.13197.13288402913677557762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38edc41d73c505d70ac3af41c0c23077d40e173a5487c54374c69b1bef0ca0b
Date: Sat, 10 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670643687
