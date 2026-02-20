Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A58D30DD00
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771624494; cv=none; b=SZp635H4W8uwWtFT+oq3/2f4vUc1vQXEwwc2nC1VXEOrGemb1wTD3uZgYXkcn0sMgII7693iVjfUVb4fAnmmog1MhTwgLhKtsjK6weTBhQ2DzdZ2VdPRA48G1/U3i2r3TBHfbkgfqZqOdN8y7Kt6/+zr0c+IT0KRRHlD7lOvbVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771624494; c=relaxed/simple;
	bh=Ye5Edd1ptajO8vnQvwdOav2B4e8mV7Ba/t6+/cfEYP4=;
	h=To:Subject:From:Message-Id:Date; b=p7Nq3SxGcK0H+OdFHcZoJoz8hPs1z1wws1QGnUIFvMLC0pLFgINKOcswHvFt2OZkAE9RlOan5wTjb/ZGDmF0pNgKjatYOO8ILEPgQ00WYCjyS/rZufkYOZkpu/mYdFEBCsRbs/G5rGJXFHvgTMW8wig0RIF/lfMkTeyKyieHpnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Awh+wP6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Awh+wP6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD96BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771624493;
	bh=Ye5Edd1ptajO8vnQvwdOav2B4e8mV7Ba/t6+/cfEYP4=;
	h=To:Subject:From:Date:From;
	b=Awh+wP6OAA1PpSVJBuP03mpwzFuG+BNYecMqTyfwVxRqwfiuvOtvkBz11LttFRhzI
	 RaxC1kgS9soCrGmv9BAiuN7XOx0G7mFBpoQm71GKCODcEQTWPcFrn9dCqG1sTGTyyw
	 NpUzhWdjrPvWwSKCe61AgW/cB+JG14lTAA8a4GT9Mj193aet1t3xo5l3TIxdTxqy0Y
	 sqc2wL3+IgUgVd+BZ4UUUGcZDOQIgRMefMYCg3noj1RZ37SbBlQYXG60jYdyXKYw0s
	 /ObTp19+OEVgS+XH38+d7rfbgcLg/pNxMODW5JG5grh4aTrgCnmRhh77dtBfsemO2X
	 g1erWUO7u97ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989CAC5B568
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162449359.27398.15602829594819550335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d5d15dfe68756efd840bebc66c29f13a49f4fae7a362f629cfaf70b222690c
Date: Fri, 20 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771624493
