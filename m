Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88D4328C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L80N+mvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771E1C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701938296;
	bh=ebS1/6dsWW4AvjCw0h2BPql4Ot9juREs0B1FftQz064=;
	h=To:Subject:From:Date:From;
	b=L80N+mvXwXl6KdA0uNcmwTyref8cbt5QkE12QuypM7EOLkjWtKteR9StX6zpdQ90v
	 sTWaiJ1agv1TqO/Gxer+Fb80t2aHeSUb+TWkZPv7Ug2sfdI7jEcjE2k6hDMsGL97vY
	 BuAZguZyRgPTq4OHd7VeB5GIza2tAlG7T9qfx9KC5hd2OmxjsJnK1m86MAGsOEtueZ
	 ietPJb7AGMOBzpUFyY1bzmoVKnVmbYfPXd3IRRyVxIXzED7q1oS/scewsTA10aYwgT
	 BuEgnf4yXJEgsDwhGYWjVp2UaX7dirfu1UudlOXZmKxnEBkn2At580jYJtjv16KxRu
	 3HheXmiU4Kw9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D044C4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170193829637.6366.17323043909843411434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 987ad01fafbe8988c4f644102b11af26a43cf114096a5724bde79ffc38e377de
Date: Thu, 07 Dec 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701938296
