Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B86B8F66
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739088354; cv=none; b=VkkBczsKdxN1RvYvy/SeZklLZ7R2PI3vHvvAtbOGzxWu+FzFyDh2p+ht56zoqzmQKDrpOIZgH+jgMGeXnydMASbajVIyH+isqJnA5wBioF8nuWLzQRKSMzKipT9y0/njZDGKoVYS0lD1eOpuE6kT7TuvDfFq2RfJ3q7wZ7RSvcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739088354; c=relaxed/simple;
	bh=3u5hz2LyE6PGl1iN6GV5ikMaLDfta4XM+KwWq0dBbBw=;
	h=To:Subject:From:Message-Id:Date; b=PP7mmjwSjdxSdH/5UHJhbUWWq/9imev6yFijKZRbQxtjxuZKY2o6bB6f0EpOhNFgMDOFeFWk//AOElCzL1ItXJseoO9tNhFRykhKk8aM4i4MjirhnGoLwX3cAOMhq2DXR9XWtTxxSrnogRLSYjP/d2yoiOOz1W6OQQ//LZdgmjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6fIeNOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6fIeNOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49B9C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739088353;
	bh=3u5hz2LyE6PGl1iN6GV5ikMaLDfta4XM+KwWq0dBbBw=;
	h=To:Subject:From:Date:From;
	b=M6fIeNOz2u2NEI5obo91a+t/mnnS5lVJNOR4RLPSEb3O55AGeWLutJkzyU4zjKr7z
	 AYXMODw7bkRjmi+HyzrXZmWVldnCUaAWhdeqWcLwVxpWy+4QoG5/k2P4GFnxydzlwT
	 VJfgS+j1XHPScEWsyuXDP943YCr0Xi4R0wKpwm4TtshgmJIEHgCMdUVhCfMKPk09yg
	 7LZcRbLAJRfwY2Sm2sV8dwe3qwp2KPY3TZfKNzM3Ul0XYrI4s1X29yB6uzsE3JMvJH
	 xQGLQscK2i9ezJgA6mVprL+UckSr8zp9zL9cC8n1MDrwTk2qicyRfc8qLe6vqXdQ4n
	 +hBF43nQtJyGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F546C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173908835357.3608.10844344302664831075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e7291a1785fb57a442c4dd8fb5324520362964454a6457629d6b2128720140f
Date: Sun, 09 Feb 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739088353
