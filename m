Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FBCEBC
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC6AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670645487;
	bh=7RPqttI9Ew7SKUUcvA7qPTFOwcjyPXzlDVdqAmurrts=;
	h=To:Subject:From:Date:From;
	b=oYx6NkZPPh4rYna/Z6GOqMGxAV5YBR/wIxDnu6hYEHOzU/DGEr5JsSshNNIVb3K+3
	 LU4H0LhTG59t+y1sbtNKiMghA2uJn0PisnJKAivbBICxcmRtYxHfm7WI01B51BtP7t
	 sXY971L3/1pfDeaecmBDO4Col5ZTmXFFPHILeFdvFdwMp9f0qkKakUcEdgKhw2hw2v
	 ElqyayGHQev6/SuPL4dAKEjNCOI9vrvh//qr6d8wMKT7mu5CQ0/93Ib95d4baBdLuW
	 1Nw8Mm/h9Pvglj3p2Z3+sCX9rIenLQ+1K9NAwEPoU2brk4LFbqGVJdwVjcupWsIzxO
	 rTzS7iH1/XcsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640E5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064548740.7070.6166996658332029114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2afce2a4efb25aabee142cab3111ce9cdc68e83e7a1ae7f2ee68263c6467976e
Date: Sat, 10 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670645487
