Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513AA1C8639
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744412394; cv=none; b=Y37jQ2EjlzK4B4WS1OwFRuuWplHy3NBsSowCLxkPi2Wkul3Ow/emdgh1BYM652aGuVZLNGK6HVZXNIEmlrY22GYkGnFQ7iBMsGVanbHCwW8PQm7/+rpUXgD2GoJJswYWXUiXY7ND2LJh5RBMSF6IbDUvjzNbay0zqSOZaV0LMCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744412394; c=relaxed/simple;
	bh=n68bUQiF7bR6vRxSZKt5jPEyGvY57QNX8xUkvSL4jgY=;
	h=To:Subject:From:Message-Id:Date; b=syLG9gQpC1hlOLKd6Eyo1zN4wZFHfp7yuLorIN31H734JTjgy6dcBhN/l24VMlXBwQ4K5ztUnBMp6mOsOYuGKbgVExTrbc0l4X1ALu7NAFhSE/El4yQygUsyLIgEToBD/O/PChGpL+Ol3vqiO5wnsSvtF7ECybfMZ1syUnlekhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDz+YYPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDz+YYPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81A0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744412393;
	bh=n68bUQiF7bR6vRxSZKt5jPEyGvY57QNX8xUkvSL4jgY=;
	h=To:Subject:From:Date:From;
	b=RDz+YYPePh/WQE1uCd7RaWsD/BpGRoaOO9wcjdJszlzCfZi0Cu4Z8JArct2jMiEDr
	 kEglna1AXYyz6Dopr5ZSknJQ5P8QjOKweeWtVSH5Q1+J6fEu/7PblUxykaUal3rjz0
	 y8o+9znLKox3EzMVxbO70Avn9PNSrhsCyz5auk7wWDSQSVT3DvLW2/wdWWkYLa1FW6
	 86fLwBe3GT0Prm2pD5Jy958to/nlbvPx6JyVy5zhy+EnZf36UP0auU7qrZlEHh0TOW
	 mQ5Au+HEJTZpQeXnvaSKASnPCpAAa2oKyVfa6mPHgEexqxQu19OUGAoONtn63iNNcH
	 93nx59Ns8E5xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1986C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174441239364.9941.10869007498822295635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc135f92ac043c2d4908ef9b2fd613f51ed1a48e846eb47ab57a348387dd98b
Date: Fri, 11 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744412393
