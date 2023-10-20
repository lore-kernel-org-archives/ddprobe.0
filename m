Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447C935509
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnzPc3yd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D076C433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697845696;
	bh=EmyJwpauzik4l07L4XZsV3J1c+YsBORp//1DTxX3n+U=;
	h=To:Subject:From:Date:From;
	b=AnzPc3ydNbf6fdFpwlcu5wNnMyT/OijH5ivmU/SCQxhjC7YJZezt8+TtOm7ymAcl6
	 9KGHZpNFv5UnfnfloU/tp1sYkoGXVWe1eKeErxairSO9zGAzQRIFec4QQqm9TJJaZl
	 QBf64xHADbMjHAHqOIY6hjTMRWFM1LXQ0I81r+VUUsNed2Y0+lklZGwPs5jm0faryY
	 pZBY+qOvxe7dGTw3iTGDeSpOZdBAnndXMCSmFbLkdnaqJF55nMdiZGr82yJ7PnR6aB
	 7e40cIbBmqVPIYpR1Xekw1KovMdhyc1pQdB8J12HPBKPxOVZnvSFEOBU4OoEb/BG6L
	 TIoDBVyZZ+cyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A4D3C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169784569647.6134.17336911383413795549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4776dbfe21d7005015e29c7a1a22cad2ca34a2248a6ad530c929bb8d21eecac
Date: Fri, 20 Oct 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697845696
