Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4500EC4
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F1A4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670650287;
	bh=vmLV+3TJniw016BxaFaC2ARiy8ydZJ9glMC1D4W6dWU=;
	h=To:Subject:From:Date:From;
	b=YRUOFr/yZjm+zyimOTsU637bCiOfyFI8En1REZ4cDJPDIVglG8YKvjs6TGEWBgXuu
	 tl2vVDEw2JJ7Gllcgx6X//ji9soMKPF21L/5YxbT3tUNBL2IP9f9oaj1nHoYPlHvJU
	 MKJrSlHxqitg3YkXTYBDvpUS5PkCGiy9w0L8kX8w4zle6yf52FPe/Dr8MfLQjcBW1H
	 ADLIvAhSCBx5gPJj5SWZs4fGyaAqIkHMzNOBCs+ywgSV2SoSJgAUXIXaVZ44fjeW24
	 fxpzjrCFnQXYh0SpI5+Q3luSdqmwFIc8Fs3WY8kd/15APXc+Cyb2YTleeJiB3SUdUm
	 96il3vBGcn6jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76681C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167065028743.24264.14824710636885925513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b566d660c53cd3fdf61e6b2c84f44b399f64b31a18797f48e3a67c4139ce4c4b
Date: Sat, 10 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670650287
