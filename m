Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349374B5AE
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747220394; cv=none; b=ZtwUl5P9QZj6YBT6UHnBBnBMqmM2DZnMF6S5DAlUH1obW/Inba1ukqDLkeGaJv3ygIZ4lzO6rq47/+W8S1oVRjHMWJEVFd8nD7IlsY+ORbP2v38BFKz5+x4/dRBMWM2Z/4KecHbGzbKipWJWihy9Hm7gGXK6znVGYiD0s4xf+nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747220394; c=relaxed/simple;
	bh=HYZgvKzmhZVQMYexCoWMzOP1QEbS8LKUEgIEUVBwkiM=;
	h=To:Subject:From:Message-Id:Date; b=CWCRG0C5tfvJobdhUkvAhG6sf0DwvsChoXU/y1QkZpxayLtEB3pe4yFCGx2B3T5Nn6O/8TlSfMh0n1ebam4rKODc66emiJ//5gDWHKXI+uoadE8OFVZDcdrLYD3wXJ+ggDKwIiCAY1JQV+7TjOTodFQWaD4iZBvXjxaOhrvuE3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dazx5Sa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dazx5Sa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D61CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747220393;
	bh=HYZgvKzmhZVQMYexCoWMzOP1QEbS8LKUEgIEUVBwkiM=;
	h=To:Subject:From:Date:From;
	b=dazx5Sa7OKADW5iCMpkhIGpDgh4ppWmhQJRgV9OAOb0y7PWt5sX9G67bp/v8+l5sG
	 cLq/HqwCtgiaVQbma4D3PG9J6ItwOjh6iM9WO1uo0qRSaZF0074P5HX/R0STErejFl
	 rpfc6xihycuo4Rkg5g9NKw5b060QrsQ1oVEunLd/PwnjS09jaDgbxxdHMbzvjwcY2n
	 Nk7FNh9QhWWxEkLEWAz3fh2NsIs27soFC0eEZ0P1+bXbqelqMGBRANyQfY0xtUr5jd
	 LWNT9ABM1I+t7h7zTIDDpby32ueslYreFwnZ9JkWOSpP/7QCcUaEbJME1qa3dMjBnr
	 c4zxjEPNR4wWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92070C3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722039358.19506.15068590660852165193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc7c0eaa0c7db0ef4c43ec34e5569ab2f473a82b6b1a3c735ad191fa1016958
Date: Wed, 14 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747220393
