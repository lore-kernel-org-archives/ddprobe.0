Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76863BE68
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 21:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F5FCC433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 21:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683148806;
	bh=quyDJcgwdgOe1Prqjv0X3a9vXf/u41qNT+FuFZh6GtE=;
	h=To:Subject:From:Date:From;
	b=ASllnDXjAFjPYjJfQZttC6+/Y98wsBgGCDJgbvmPeR8WWZ9frL0a4zlvm2STYYsvz
	 a3XE6+fWASqLkYUWewAtpJLHN+d6LBnfGLAGXytN/wmo5YX/p4pGgd3mz9xnyml3ou
	 UjO/AJ+MNAtRc/NgedZ7144wY7NpadiIToIh+p1ANT9EOrxCDNnB6NRqaohzyVX5am
	 uPAmME1PYsAjsz+X3I2qfWzRdZLNgJOQNUZuEpxWAFu9vU6yRy24iR1cmuLEvy4fJL
	 6rc1PJwoRAdUbUDZTcVjK/XEAtY+XEJ9XaP5s/NkUK/RwE9DOiO9wM4AsBBKfoYKiG
	 0A+lFmnaXKL6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8B91C77B75
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 21:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168314880594.10169.15715517642212147498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704d7263b964e7becc63bbfc69d03f59d17d428678d3fcca5c8ed402d4e45cbe
Date: Wed, 03 May 2023 21:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683148805
