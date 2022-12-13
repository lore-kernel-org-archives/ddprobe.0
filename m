Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63F123A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B8FBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670915487;
	bh=yt+E6oRCGA8DEkx0b8o6cAqORoGIXagU5CkB2+MouU8=;
	h=To:Subject:From:Date:From;
	b=JEkVsl/ajojXwDJpYygMu4RUYP3YmZoaz/Dl91ZyCh6/yec+XocGSZWQ7Y4WBErN0
	 u5uZzxeCd+XOMonGTP991EuF8Hx1b8PDejXpaNQpvDLC4+stiBVlMiFbXbt89M0fYD
	 eTmTC5tec4ECd55I21FZwVHwd6T+KiLJVUOwm77feEzw4KU/AyinuoNKkkvSGs5DuB
	 mekgraxUywxx80EPOG3VOoDGjz3qDmW9uAsvrHJHtieQUdAPbLqiNbYuoA45vPY1cZ
	 ASEG009VtHWP1uPTGv3M5bVDASw7jM3F7xczKrZZz+XS034AUUI3FIDoK+yYDOWqte
	 NjrysdT1NIVJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B2BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091548738.17110.18243140749980805482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a0939f5f3a69b215d250fa64a695ce267fe5032bdfe41f8ceb5e6c24b7b11b
Date: Tue, 13 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670915487
