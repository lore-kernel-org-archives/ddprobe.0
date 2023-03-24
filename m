Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295CE27706
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 21:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EADC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 21:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679694665;
	bh=cerW9rBnKvdZEuIMKGTR2/r8flj39YRZv+grkvVixZg=;
	h=To:Subject:From:Date:From;
	b=YcUOLx1zikHDGRw2vCYCqCnxHy1Up10NER8/51A1W85M4M8R93JMZ+VQAmGQdZUgJ
	 l1t3v4kY3EGDYUjxtrIuTN0PygYwwz3o06e/ghmPfeowMxbrE+QgM9E816d2YeRj3e
	 uxnM4wxNhWDkgrxFeWucTRKm9zspRpRO45D/tIQpa1iIZXc2+LhwK6+BjRL6kaGkq4
	 tFNGBkHJF6agKh2q7XXi4KviVNzvWu4AlvBEZNwNkLfxA+j1vGifAjXhOzbQj8g0x9
	 Nn1qCUeo+zil3nZPQpfZ30pr32HWaXUyScIfgFym8fOhO3yDQuMwhqf8ESWs5WwAEd
	 LYICk7vqfcGGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C1DC6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 21:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167969466575.9535.16765397229611009796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a228414e46ec725284c8cadc39f32245f9f97dfb4488f4c5d9a127c50729d7
Date: Fri, 24 Mar 2023 21:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679694665
