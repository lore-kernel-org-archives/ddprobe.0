Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5D314534F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714585943; cv=none; b=gk2Gi1jMzTB4XKlotiw2PNm5aS5OkhIogPxRE9/tSXZsE1ua2Yv7Y3ZlX7jcjk9ulQEMbXJv8x6Sdjm86cwomqrnr3Xnoq+zgEiI/YTlqRWXd6ceiUXjtpW+H/A1Sb4UHL3Fg72LQqXeJEo/sID7DbZfY8WGQkviLPlOlS2J2KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714585943; c=relaxed/simple;
	bh=mrNVlhlJJVtYZMcr2593U4AyD6VoLFHfMjgRVORcuYE=;
	h=To:Subject:From:Message-Id:Date; b=LgvPs1uu5f6NnMTIOeY4u1M5ZxXqtSV/XZtOs8ndj3PXXFDDWT8x6IKVUOG01zfi+I7noJMhz1I9N8lI9xTTCu4WCAD/8VXtzANFXd4GO0rYe/Gc7BWbWXpHSL8eRvC5OzsZ6lQ8vrCGJtJI+/dHPOIUu4FGdk98y1gP+FzDvxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeXzOcJY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeXzOcJY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D217FC072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714585942;
	bh=mrNVlhlJJVtYZMcr2593U4AyD6VoLFHfMjgRVORcuYE=;
	h=To:Subject:From:Date:From;
	b=TeXzOcJYbPNFTUnUZbzcP4hLXF6mrHuGGtRbo43xoXlwVFBRuudaC35Tpa7YqtK7L
	 IzkPdS7n0x9zugtU8VkUTLdZKAoUX8C6rxJditGVWMxYmeggKd+uBtujVui8hlK4lC
	 9DZBEzY0u0EFvoIynV2ZDUMHvth9NxxV/dKkYmr7vPtXiF5SaD0LGvt7GiZoS6JbO6
	 opEjMFaYFE/SaMUpbSMfa4ZGW4DV6QSpyHg/tr8GEXa7HKygw1bKIXXOnXQSlADLDW
	 Wwa4JShzL6XiJ3qb0b4lqWyQ9li6ry/GOhW1JEjy+KiaFODWNKPuO2nIUbRQ2p/liY
	 /I19J7jLv7j1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD67FC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171458594276.23416.10053001930573328475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb8e43188b2bf7e5489019f72b803682da37c5f00fe280a18db452681a04fce
Date: Wed, 01 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714585942
