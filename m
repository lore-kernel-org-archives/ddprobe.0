Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDDF1A2C27
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746982794; cv=none; b=kkzKrKN9PFnAz3x2z7RM5Lmgh2nbabn0GaztnlNxrYEwM8FV3PClVRz2yUJzBeBdWABkHwYXNTTsj1KcX9NxhdZiFAkPeG0A/UzhglhNcTV3gx8A6kKcwT4DJ2llEdwRJpdIcemUe2QXhpUAWjjcYrzg0amM9U/G0z+4D79LkxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746982794; c=relaxed/simple;
	bh=ZU/Pj+2o82csRsV53Dz6VlRU26NAEq3tN4mdItOfLv4=;
	h=To:Subject:From:Message-Id:Date; b=eppwUWlaSiCe8YruReumzoHyPpgAtKQu8AZN894Vw9eqXY8BOvscbkwI3YZvWx1lZgmYSwmQjRR5f/sG7w9uMGU/S1wSkLvZ0zh2ie3Z+XdvIKyhxDjxsAaTNCQsyW+sbrQx+w2P9a3mHGWfAx20Q/n5fHfMDKidr5BhElxlNnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vzxeo/g4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vzxeo/g4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1512C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746982793;
	bh=ZU/Pj+2o82csRsV53Dz6VlRU26NAEq3tN4mdItOfLv4=;
	h=To:Subject:From:Date:From;
	b=Vzxeo/g4pQvPiBENxTYTOdgEo79P2GAb3rswp++b1fUtmyjZ2fX0gaq5tx+9KebzZ
	 vi+l5KHAyJmITf+kO1+ctlJ6VuNyjvqJt6O+ukw6woHzo5bIbKWpVj2DL6wbt5b6cx
	 3vD5pZD2LJdrHb9YW1kZxeFqngE7tRCCoQB6Y4TtQ0bnN7Zzv4XNLeUdDmTBGMJwps
	 Pd4Ec4mOyR1HmDpHFdEAkcG9fu8f80XvymFM+2b3UxCTGPh52wj22LEJioSHYn5q/y
	 vLjf5Kn38nZLTuBJ+QCTi2bAgYDvL9W86UYPD5EsSTX88ygw0ARCxa6ZpITs2vv1BX
	 JGvNlXsFu0G6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF47C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698279357.22081.16991968438672784601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e65f546002dabbb012317ff80a6684e0934f0a32f26866ea65946c7b9a24303
Date: Sun, 11 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746982793
