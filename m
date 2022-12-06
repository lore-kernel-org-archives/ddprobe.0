Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9B220EA
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70ADBC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670362254;
	bh=NIYt7gC62gWAVu918A0KK69fW+TLbCOS1cBgUy1Pj+c=;
	h=To:Subject:From:Date:From;
	b=Nx1d3vaOJPLGjtA3LQk1vUCyLSCpjsMXQ7NOYMlHM8zcva7RB3Csy1NRoW22+9JLx
	 jKqgGXgeuV7QqbAPWUovrWv0AE3dI+UNbovjbhMqPz7pPunbKZlj4uB4MqmJSpj1fM
	 R92ZjgRl/Dv14ni+8GjCwLG11TugQ2SVqJ93Q3diVGy3rx44t4teacVjlTeJkaD6f4
	 16brEcffDAm4810eEiULuyKDikG5P8f8Wk0Qp37hrkj1Z2A+3ORH3y6HKxcrQIDGpD
	 oKQ0dMY+jLQ56rZMR0j671bwuPZY75Xe5q9p1VAS9r2Pfi471XPMvbB6vWron7SPu1
	 XKFB1GtQjMZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5751BC3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036225434.12530.13824500210194238704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12888480a7630a7e78eaac604ff9290d296dbf91e870885908d47c494e6f16a
Date: Tue, 06 Dec 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670362254
