Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D11A48476
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F2ACC433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671801087;
	bh=VfybUJXlP88uOknQX+DpWfEjE2RMkYT+GvHibzpCFAA=;
	h=To:Subject:From:Date:From;
	b=Bp+7sH3A3333YsO+OMN5S9m9j8EFIz772+HagBumruDGSucCLJ6it7J1P3OWoKapZ
	 DbIs7oTQe+Z/FLIl22RYRE30GNVv/7cjvSUZMknT59C1p5PGdRO5EgCp2XwJ9cW1vN
	 E6daRsQcDS2wRbmUeuJxBP5X6slg2WLy8CnCbQxFziNyYE9nUAKLWHTAUaHkgMWyqg
	 ktjjy1oSXgzXV+2q8MMzspPl1PrllkktM0qp07gXnvVyAyM9fekjt4LQgE0ynXRUss
	 wqNGT7MUV1/cnEVA4X8u850JBcQc98BCqeWqt044A6yS6n3JUyYjOOy5xfFKmHICjh
	 PbcPlFQwW0QqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 631E1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180108739.31321.11134826791418163640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3af8ee585beb95df34366da34b090dbc3a1d98d883251cb7170c39491cbfc83
Date: Fri, 23 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671801087
