Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209A515D1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749272394; cv=none; b=aolSAEst7ZJKf9ZoIYUhYccFKMxAXnMGUYLCIe28jBfNGE2TtDAQFaLBqzZV56SalZxxvkZ5/bQdAEY7SG/xwbUCLb0YaualqsLO9Z01zWvShQ+yAOXLZyydsAwY+Haha8HNXMXmeUfcijQh6U+JIjpZXlFj9lUK/MAldJE3hu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749272394; c=relaxed/simple;
	bh=Or7eHgZVHBdAm/iskrPqgHOTi39bzeqsxSAM4xbfqms=;
	h=To:Subject:From:Message-Id:Date; b=LU5E1617SAI6TPFNKup9Rul94zqORAPVyfO9rECcRHM5hxZ13XeAq9ovhSj3R4x1dGF/CGONCpZiDjp9rsKLqTzHJPuznunf6ykSQ2YxAqw55vN174DDCeN7XPBAyP7PZDrUSSUmBFhPEtoewRw9AHBzxje5llGp0nGFEWe2NJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/VpZw+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/VpZw+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB80FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749272393;
	bh=Or7eHgZVHBdAm/iskrPqgHOTi39bzeqsxSAM4xbfqms=;
	h=To:Subject:From:Date:From;
	b=l/VpZw+ZqtMy/smn2JObSYiienUhkdoI40ZfVuiTA41K511cKegqEzzpbEeNfq7hj
	 jJMeiyo/nkdeDyZd6wluev+OK+gXnxr0ltwwCa/DQ5TUuETB8zBvxVM9mV3jaV8Ual
	 hJV2NvAZoOxKKfx+Gl/6E5/oRopcU8BzKYg70G1RJ9FAwAwI67rZtwZ14wMW+Ajqht
	 7HX8YSrpRPFSxXiPysRhetgMrYVXQyVblQ0rOQDbIPpEdNv07wQY6dqsa5ZNHCA7eq
	 RlBMAAWactZi4YZbu15WY9EAzpXqW4HHVxCxIhXBvkUwrBrob+ADfhFX5FRoVvAqJw
	 e6WPcW9cuGp3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A69C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927239357.1779.12455219857491975290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717e0680a165e857ff4e2c93a4f946b5a3a3520c7853229d7fa52c75a52d6148
Date: Sat, 07 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749272393
