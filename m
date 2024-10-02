Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C6F33EC
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727850353; cv=none; b=sM1MRbG55ba6S6etWjnAqul2oa4bMQN80wnspbP2yJJhmtvyrkHWSm7w4qc+Kx65rGjcu+OC50NPyfGXb7IAQaOUYelYMowy3CFgqe6lpyqNnzQFlmy8LsUFd1MSK9lfTF4w9dNPxGVGKNxnvm1PD2aWhW9sHqOhFxlXy5L7pAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727850353; c=relaxed/simple;
	bh=lXcSHI2YEibsLt8CSK5yxYv7T7wnFFuHEFNpmDJ5+IY=;
	h=To:Subject:From:Message-Id:Date; b=WgA9rDCwYt22EuofmhUbRv69eK7GPcNBz3iLyvmFF6Woc03parbDmcTm6xYJhRMb2nZSJjDZz5V5Dgy32ZgA9CGv7kwRFj6oNQY3c/AZx6JdnIw3BKbpIBJDgw9p4fw7ZOxdxPfWwOUDe4SCbpHE8rftuXJc0of7RLVFr2OE/X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eLsZi0Z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eLsZi0Z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8C9C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727850353;
	bh=lXcSHI2YEibsLt8CSK5yxYv7T7wnFFuHEFNpmDJ5+IY=;
	h=To:Subject:From:Date:From;
	b=eLsZi0Z+0G2FGSYyHeIg3RGUsCdzQEDVLA9S/nzKH9vdnSu4SPtiiPprNJ05q+YXQ
	 eY3zjg6PXFjfuuaa4o8WajNzyazvNEEhfk1GhEWEFzWBj+KLx6hhhgC2FD9nwMYKFo
	 iFo/ih5tSwWeL07TUdbMPGAAsj+U0osgypKPUF8cIvoLhT1xhdvDJr7Xij29hU3eCY
	 VkruZOhn3WXKmPICL0d3nyBAcLVVsNSCY0roRX0o34egp8dgHRAu9c4au6G67O7Vnh
	 3A7a9crMm2QZdSg8tmUagqOo7v0nfzEKHNe4YVYHzt1fTWu5WDTlBqwmz59p/jWwel
	 7F6V7O3vikphw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F94CF3198
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172785035364.4653.3152620588200431672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4d3f305b99fe6ab6622f77bf9663c5749187d67daeeda784480a19647cc6332
Date: Wed, 02 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727850353
