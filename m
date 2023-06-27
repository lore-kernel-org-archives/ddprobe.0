Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F3B7469
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D091FC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687846988;
	bh=viN9QQihzXEItQGXA3yEtYk/TktV5f2mDNZSXBgLqVI=;
	h=To:Subject:From:Date:From;
	b=aNxUzt2hNzXh+a95dwOImnjA/Kduo8dYHDrQxXFNOHd6fOqUmTTK6oWMwozEn1INt
	 CSlSDsJ0PHm64iR9FnnFOf8BFg06p6QfedOWya6D0jxhbWFb7S4XJUvWadDNK/eeOi
	 tXgfy+N8Be/nm4VUYxRE/s8NdIoo+nGYfm31uPtyBzEx06AA/9B1M0CNdUYhts0dw8
	 n+WInLXJ6JvUjVQ/aKjtcULRZz9GWtW6qh2zyAxw9aVegRzXIAEWqQyG7a5KMZsSvi
	 G3wB33q88OcL308JDOawS2ShBdxwG0XYVvopofm59kMAXs6mGn/b+wvVGP7LRpFa0V
	 FpFo5jNOXLI7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF82AEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784698867.22303.10016737774951621302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f41e9b29c8cc5e5d9f5ac2080d4d3255f465be91bf0608b3af457918d86a3f
Date: Tue, 27 Jun 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687846988
