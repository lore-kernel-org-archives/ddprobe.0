Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732B73DFC73
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778661035; cv=none; b=Pml1CZoJJ1Zyj6k8yLx/m8SmLkRfZBSFbo7Xvhqgmk0/4DjFlmMolmpwErt6TnQEYe0T1JDXjWseD1tZcKlr+m0uPIQwmsl+N6+cjOu6NyjHK+Knlx3bS7iH3XTBF5ao2JqJOHcZ14iMxeHaroazqbXs/PQgXikFSr/Q0nf58tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778661035; c=relaxed/simple;
	bh=oIcbMmXo9jNKR4w2EE6UNld9PiC8u7EzRwrCj0Q0x9E=;
	h=To:Subject:From:Message-Id:Date; b=NDIJeFWj1kIgq6THu73xsluI5giuTXFwFjLzjEiHKXkHt1cEJ+3n9zOYKGaZxI86PAyOzQXStOm/5LUnxdHMuk4uC2zHY+j3wTjGfbg54Qir+hGkJF40wVoLpxQyO87ygnOe92GJ80QBypAutkLcF0khG5TFmGqHG7bmD2IoKX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tH5YLA4G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tH5YLA4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8814C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778661033;
	bh=oIcbMmXo9jNKR4w2EE6UNld9PiC8u7EzRwrCj0Q0x9E=;
	h=To:Subject:From:Date:From;
	b=tH5YLA4Gg7DtMG++fdv+rKY3GboC2TIpscvvRcwbXg1X5NiIH6iSuG4qjHjZVqhrW
	 RxLoFl/i6/f/fIOjxy9bZtliXeF1ATuacUShmvdQlRGd8sxbbveEanSKM+WUk1DYIY
	 +jc84Pk3HvIKG3d6IdoQAL1BRL7xu25IRNUutCn4/Nqq9K8wx7L2WYyOGQe3xJuGq1
	 /r+oJKBIc/J6P7xX+DLVAN5GCqCZglIi/9Z4/QpghWXwrlSTsuv00Ntagb7eKqIhSM
	 rdEmf/31N4FwjtoTgIfNq5MiD8367fptEjjyiP6S7reU3RdqnXrw3nuxY1r4IpbcbX
	 nS7uC7oqd0sZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA75FCD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866103368.21238.654795009914930431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01dc8be20fd3823d5768ce76c0f719c85880b0929143e15e985a8a065631243
Date: Wed, 13 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778661033
