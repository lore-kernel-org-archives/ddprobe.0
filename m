Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D517C62B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B2BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668947454;
	bh=71PdVWc37wkcsv5n10o9M8FJBb19p0vIsLkiJvQa5WQ=;
	h=To:Subject:From:Date:From;
	b=AyOPghtYVWg60xo/i6AOE4wEJUve/3iIaldiUtw3mi/QK8S3mRqDS3DE6WUZwvmJQ
	 kVTxdSPd7KHzUQ4xJbVNQlAp5NCIRwW3KMAThbEilWql9x7gtVZUw5ZuSZnH+8bOxf
	 gVVDiwS2VTCbXDQCcenFBbTVe1NI7jxTXdWPsgkr/O+Q9jW2g5FyxWowfXSXHZ2rf0
	 WYbtJ9YZ7KAONdmDvN6wz7srsNbWsR5vJndRTagIw8HH3EkpcOpfo/p2Aljc5rpcXv
	 NVg718+up0m8p0HjkaRcUsioXs8ZqqIPypvmGHKZc+7ioD1uIbAb4tkmo0b//dzQdL
	 Hx/eX9J5gUqTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667A4C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166894745440.27721.9173120147127579461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef06e1ce9a38fd5f999efb990a948b38f8ca2aca4edee6ace6ad2ff77ff39acc
Date: Sun, 20 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668947454
