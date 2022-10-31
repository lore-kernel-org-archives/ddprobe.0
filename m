Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBEF17CD1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79AE2C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667203254;
	bh=qXmYGfs8fY+A2u0B1Dgp9iUzSs2+qoRzY+hiAtXl6VM=;
	h=To:Subject:From:Date:From;
	b=lzZoxgCI68LBGkCwleXKTHv+hMT8bxRNasXY+QNb8F+zBfF8W175vY7Sku8FdE3UO
	 ioeelcwxW+cq2aRxybVQAGM1ChwmO21p2S6xuxwhqkrpz1QtPqqO4muv1w8wVz2ALq
	 h/e4AuZwUQvi+bJiQehr/q28CEVaZZ0hcTmQjIuv1wYBCGiQ1WfyFikJVuRRbwGMq8
	 odjvv4uH2iYbs29atywP+wPTn2oYYeTsbHtL3ityfdvoImaC+9/X+9aRIMMTDCdC93
	 fjkb6TvdOd6OITL1UJB9EQrZME8ERiHuzJ8GlrmfPNtkil4kCsD5Uk5mcpUWfMyzAh
	 9aQEGBsNgs7sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD52C38A02
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166720325436.17045.1702409524291083465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33047e85290ff50567d89870e1f935b95e7336be90efe1e23e369c15d109636b
Date: Mon, 31 Oct 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667203254
