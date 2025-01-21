Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3829F1F3D3C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737474954; cv=none; b=Il+Aw3kWRNd6Tl22X+ZSdlBMsqxCw+2QR5Jk/jV8iGPOOVG1NdDOt0bJx/A26OmW8CewIIz2Q3dutrDOlr8XX7JuXMxHK5bvF3LOPa/3wOn+KRp9Q8EgpnCqZ3aiK7zUkiyp6rV2wDgTvp0UEnICV3w0M7JyA3VMnhSOvG+1gQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737474954; c=relaxed/simple;
	bh=bMZXcqHsiBJNvevsr0JLymjmZOLcy20D47tEKgFF/eU=;
	h=To:Subject:From:Message-Id:Date; b=uPmarL7cxaWQeLL8/5182uh9V7T0xHe7igvUjnIs8c9l1KehN/lhpmwRB3N25E8bW2mRaw8Du2XylFNoNxqlt5i59T0FtTzrTk0VGChghExFhnVGUSp6nGOneMjEdyrR6u7pL3DPvoivZgF26FNpm2oYa38DhEXq3sx5dxYv5lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+9vte8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+9vte8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F5C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737474953;
	bh=bMZXcqHsiBJNvevsr0JLymjmZOLcy20D47tEKgFF/eU=;
	h=To:Subject:From:Date:From;
	b=M+9vte8szO3JyBJOH4H62h5twgK5rf6G3v7TkfO9Ey4U6u//dlXplwvxr9VQt1PCr
	 LPSuo8wlQYHeVKiFSMxlCwWYaysYPnz04IxrCFb1FUu51gFm10MAJ06Dg1PCxBWqGe
	 t7WCEu5z3uKpcDr2lLyeHXCsOzghHZlDf5G6kXPDh0lvMbqsAwykupqFXHHhIIGLFz
	 dqBT0Fg2/41wDBsthA8OyMsPaY9xrn9eHnnFhXnsESWbLbydW0aPjs2KIaULKcgQhu
	 wiqblUtHhGqtnSrDkj/tE0TRLYn2Okh0Gz+hp6w1uKT1oCZPauPVA+UTOokZevxjWn
	 IvGH+Xq2WgT8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB7C0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173747495359.23372.11375446735124699639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8466289107568208571902c08bd27b3c03a91fe255977985bd507fdb9611a2e1
Date: Tue, 21 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737474953
