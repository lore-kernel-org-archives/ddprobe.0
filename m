Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63218A94B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C26C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687852388;
	bh=Lpd+LIKYLInIuMc2ULROLzx+2nWhx7mRasSbk0HnulE=;
	h=To:Subject:From:Date:From;
	b=IzFLgH/cywdJq/q0ZqFIGzTkF1WJbTik6DM3M977IO5l7rNrmIgI60wvJsDxZN/k/
	 Cs+ob069C39yjxcNP0oVCQYdZNZ5FjLxM8Di1P/QlWvwc4ErgXgbPQRGOFoC0XXne7
	 nWGgLK5XVxOLHrVZo6eHbt2F7QJyQ0o+USPIvHtnH0FssZHhyaGzv5VuVz3J2GK5Dd
	 xUQ8+TVhaWQxbpuyxT3IpD6v57Z0HL3kBIQZAnvXisqUWYssgIxfCiysqK9Rnhz14V
	 tFF/hUoCKzj6OIpcw/FKl/wufex6nweeub3yv6o3thE3pldT3d09GT6OtuhlpzUBk4
	 p1JGMujNNCIjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97CEEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 07:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168785238874.13460.3338661488542368960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770972af6d95f1291c64cf3242c11fea70b807b425c2588e7e0e2efe1e1f679f
Date: Tue, 27 Jun 2023 07:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687852388
