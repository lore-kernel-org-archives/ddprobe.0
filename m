Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B0C2857EE
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776395254; cv=none; b=R9A3rABxN1DJbQycWIHfwITYsPGnuP/5k4qM5hfij5eXTKBfEBJJPx5sDxPelIJEk7HVyNyciaBrVioiST34qQ8IixDyaNNj1U6i6b9RafuCfVEZKe7ZEtN+92uFfQxcozRqNEURmCq9jCivBa+/Fdj9lcFAFaJBw8Ijbjw3Mb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776395254; c=relaxed/simple;
	bh=I1MTkrW/U+dM0HS2spNocYlvDsPG2z/5rIHWDD2ewtk=;
	h=To:Subject:From:Message-Id:Date; b=n7W03v6gFwQdXGikaKnLek/meD+ePDr29rMj25mTWGkScKmPIXKH7wdDTaktpShCU97ozVpk6HTgo+Ui/D2pTc4AkUgeFk99egYOOmARfAY/LoHd39ltsKhTWk//ikdseObufKTyus6hQ0OJBIt8RcozD0Fc1wzUOR1Ualai/7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/3FVbK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/3FVbK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB43BC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776395253;
	bh=I1MTkrW/U+dM0HS2spNocYlvDsPG2z/5rIHWDD2ewtk=;
	h=To:Subject:From:Date:From;
	b=g/3FVbK8JXTQ5aaKJpDPvXz6yHudkCTgN+DOP9Sa2c97iM3c+buPgOHJ9EP5axtra
	 MzJGUsoiW/YWjSer7yc+oJqzeOjCsoLZ7wn8gBw7ZIhSunf204cWFpieVJMl4HqzW5
	 M+w4kj7L8flFzG55bENnx1RWU8iynxIBAgwMz3Zmc8D2skUr8KlBHSHwpVkEhnmqd/
	 jAL7WTVwIjBZxPnhBBTOxrXxkpnimAh3CqtXsebEHeKL319c43xMNAutxjIYlBhmnh
	 PeeDcu1sQUc623pD1iqpy0QbqiFXNh4lRrW4gucDJF7d/jvj/37FyjLHXnb1iRnRAI
	 8osotHUZ6bh1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5D1F8E497
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639525368.22546.7223252068725938201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522fb2d43d1aff068ead492466e1239c58662a308423a6990da2aad890cf0f4a
Date: Fri, 17 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776395253
