Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3ADBE7F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 07:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9467C433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 07:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685606105;
	bh=5Q+XbrRE6XNajCKDg1hLQlkObQsXREiXQyrimmmdECI=;
	h=To:Subject:From:Date:From;
	b=UAbqBSPNVK5YCITMBm2y0Em084N+uWUEpMVa0Jf/02yfErUEMm8PJB03Nn+CDY2QQ
	 t+7j6G5h/7h/dspDyfjmK66gQES1jicU6ts0dk/6ZbGf1kDqq8BCGsYnOv9TOpkXAa
	 oG8oo+jKlrVQhl6Txh/kMmGz3xIMZiVIZ/zzm9GEKd5GXQ6EkYQBvvTIqnB0Usgzc/
	 /S1f743QibZD0xxAmIIHBc1EJpo4L/I1Z2Jc0stfKnV70M41MMQEBnniOQ1Sh9wAJz
	 dJkkEm+VUHzhhafp8Eus+xeyKDEF6Uw0vJBnW/mWIC46TZYuODOC3jYepeNtRKxk5X
	 /AcZ5Q3sHV5Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA80FC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 07:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168560610575.22749.6566124751592125134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636a0d1195cfb9cc4eb3d3d0e0090714bafd7f9d8b6dc33f6d7f94595d04a252
Date: Thu, 01 Jun 2023 07:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685606105
