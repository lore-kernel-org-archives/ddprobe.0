Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8811876
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807EFC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671528087;
	bh=bnvQ3rrHTxNEeHA7v8ozqt4ISP7cKZ1RnOQ/G1sTgxM=;
	h=To:Subject:From:Date:From;
	b=f9f/Bnr2J148NtwW4IzyRfe5BsHlkrb78qzTy1TiyqJyeSe3JPh9tce0DVmb1W9cn
	 p+60DONLGMaWmzi2G/sSXDIpxVrw6BsBYoFqUztwM7fGGNX5lBXIsVYoUWWcMykvFK
	 pNWk2Gshbdq6ic3GioG8rfHukRpRiyzQNmqSdFTSZ4qGOQ1cpoJhNKwCVF0BQAF5Po
	 ERlNUm+fSqHYUAKgZ8WnGcEAs/E1GVkXibObK8HjlQQy22QC9OT5D1nLSnLv8TxQTo
	 CC0qUyJQTious7rT/sNWSFtLqTwAMbJ7+NSKrsFntiuaGZp/PA5BokNtNy/1zvC8N+
	 Lbt/iOLb3gKtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67332C4167B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152808741.25470.12894638757216862050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030c98fcab37fa94c3aa4d28f308cd725a0baebf5dde33d5d2301532928ad254
Date: Tue, 20 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671528087
