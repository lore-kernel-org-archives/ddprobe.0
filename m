Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4184B84A35
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748411994; cv=none; b=Acvlt65xG68CUFvMO8zLWRXkvM5hJuhyU+NnaxKet8+E5/c1H8yPIHafUhWrTwmqSeDEqu6YLi7unWNkpJXW57FHf48w+J9o5NoHrfX0Ygmhh5aGhk5zB/sNBbNiZkQp9/dGqT9gUCpXWA0hoaLWuXgkYx4tnBZEpSnZcTLxeNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748411994; c=relaxed/simple;
	bh=sGyk7VR174RyOZvzPtu/z9pHV8xWws5AD+GtQ24Ax6E=;
	h=To:Subject:From:Message-Id:Date; b=OJ1bRevlwlGWHw1vwO8H27ig53X4CVeRcyk+mr/oYRM4LXqZyp0NQFA40p9iZE8wbOc9vIg4b5IilPAN5wf69NXMZhDtUlPDpcWf0XGU/Yjoo8lLI2QEiS5FuwGZvbuACg60nZnwg8YCwmAGEbjUIjqILW5zXRILA2dTgwbNlws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbD2RU5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbD2RU5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54F2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748411993;
	bh=sGyk7VR174RyOZvzPtu/z9pHV8xWws5AD+GtQ24Ax6E=;
	h=To:Subject:From:Date:From;
	b=qbD2RU5ITBf5L4EQ7mMEsPb5MPR5YEWVGC41K2uUIviJBYLBUN9VbaviqocBIL2AA
	 aTMzFloGSkyXPLrFTJ4kGIkymcTKbDDvHrDnQaLXQ7wlj+CROAI2cLR0+9X0dGRAD4
	 LNwo4PnVdpUSgpPb9xlEBdW5xAe2y3LBfaqo7ngqDwgaYMy8OufYYOTWQ5vt0QBJqx
	 VVVA9Ry8PtclFDI9JbpHgZ0prZB53/qEuMub1jP/lXCMsOa74o8XReu/q4pOvm9LF4
	 prJcPj+X0wPAcyDOWVReS97hJMqxf+FSJ/o63bABNrQkoLItTlOZB8GbyLY01h+S3J
	 Sr2yN7m/unAwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0DC5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841199357.3869.1567797065974117197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea64bbf1fa8ac3a33d9a3369f9f44cec5230cc65be6099a03b62ee7d9bbc4afb
Date: Wed, 28 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748411993
