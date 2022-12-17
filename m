Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DBF622
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A26C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671243087;
	bh=DCv0AyZEeszLBlpI7kAp6ohFTJR5UZVTbWtlZvdVP7E=;
	h=To:Subject:From:Date:From;
	b=g8/hemnbKsHTgqygaBGgKsq9agJe1+JADAqSo/Ne7Fr2hiiyydXgxP+0NtK/1GYaL
	 gYWXObM63KiceVu0b/aHkJGvdgn5PTniWAh8sz8Y13mWSsrFJ2FO7qSB3WybqrHbsS
	 B1LAarwb7CbtzaKcT8fEHpvUPy50+yq1/Tt0OY8GXkb8d5RzVxAMespd7XsnlBeFMm
	 PHtURFkX64w7nb5PeabCnSOEaybl/3qshnIxB1d8Sa7xtOkeH7Jy/llq01U1bsvy39
	 HNiS2SA6Wr3SMEHsvMfdREukbXfa30hciMl3YWGDtqYnY9HwyF7UR5E85nFFFv7jJ9
	 5otBUJ7x/OJ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62E53C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124308739.28635.12909606415701002690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 739f5145a6f95b6e7829dfad1ee34f9192c9f9429d73069ef1cebfb0b469b6f3
Date: Sat, 17 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671243087
