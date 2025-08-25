Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D1323027C
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756094394; cv=none; b=Vj0WA6aA1f8m8qN1NfNFQZlQl+9Tq5MrUIqK+QeWxFT0PXMPLZ/j5dr6k9tmudhvexMuRPwKMlEOr18k4NkyQOQfY8wEihXDBtCxjPbVNd/IdoYdMif6YTUG3ifkeGS3Z1u2IDPHJ0h9Vmi/azd5YpwU2W3N+vX98bCw94N7WkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756094394; c=relaxed/simple;
	bh=nwz4Yuo/Px+ccKMbl8qs0+7lJknCK0mUViLU7ic/z5g=;
	h=To:Subject:From:Message-Id:Date; b=qjQCx9IlP4y5PHjrhvACT9RHA7ilJ7wEwD9emhKZpYbepGGHG4aeZvqOXR0E9WeF8M14AV0b8dsOxpy6lBi1XbG2dX6FLrXrU9dFFQ2OoP6O9mlt5vyW0gceXw+mXLV/IBbNku8BkFc77LwAaWx2WBquluuhV/Ey9P+7jVwlc1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFBejNkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFBejNkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09AEC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756094393;
	bh=nwz4Yuo/Px+ccKMbl8qs0+7lJknCK0mUViLU7ic/z5g=;
	h=To:Subject:From:Date:From;
	b=pFBejNkGFy/QMnrBGvmWGIgCUepCsWAlqF8hP6OkInfWhVlo0vkaHW3zRFK93Hm4q
	 AjwyzZ9B1SMBvaqKb9rmIygb/oNDOjA0si2FnD2ApKOoLd8UO4cE6gBlH6cUZzpEUW
	 UeBNujQf3iAgxoC2gubLaPkqbtBJ6fHrugzqNOqikEE/pKcd2vRDFn5PGCb3Rq/ALr
	 5w75GNtNUgbhbnZX9brma0QQwXvPB4zuW2TEY+yxT/vhDHKAsw/W/UbhaW1Dgd9tCU
	 d7w6CrTMP0scZY2yfDUcOLFtWKE3vAIxOf3hPHSYniOz2jvNm71h8GTlxsU7DK+naa
	 c2xXrtA8tewsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D6CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609439357.12411.6123113383061233379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c95cf13c3b3259776d7c16022cc209ee4ea81ad7e2b74e55c814ba8aa4afa5
Date: Mon, 25 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756094393
