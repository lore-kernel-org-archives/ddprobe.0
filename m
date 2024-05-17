Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3D34A2C
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715934743; cv=none; b=AWPh+x3oAIAm+t1acKxsuzpGTkllvmyZmO57K1HD8w26Y/obAz5RNsDQtNuxiv23lsjZnE62VtJ7O/egBosTLH2khu9I/tM4G8S+VyUeb8NLiKu3Rx3M5HTRZgZwjJpjktuWuzLXSbHRCCmMx+TgDshJ3D4bPyIArZv8wRac9ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715934743; c=relaxed/simple;
	bh=AMUBdxJxdB5fa4qSGJhaOLNZGUAzA7pygRZb88BCLzg=;
	h=To:Subject:From:Message-Id:Date; b=IYPvEAjqDwRSTxilDSQnHIn/jnNHnSwaQivEks+VNTAj4/NfgLJ9UvXUM3o+Ab9RKj1oTT7/Jryy1pDFoe6zJvRkulOu3xODrwK+kxpurpOJBDhbnGc4DzCK1aqEk/7udufVIWYc9U7dCCiY+A2UbBEqS8Qs/Mb72yBVzuraajQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jw0GYGSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jw0GYGSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B7DC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715934742;
	bh=AMUBdxJxdB5fa4qSGJhaOLNZGUAzA7pygRZb88BCLzg=;
	h=To:Subject:From:Date:From;
	b=jw0GYGSfaqDQiKq9+l3zw1WzEKJX9VhEGRpuJAtZxHhVWiq1xlpx4Mg98NLiF/XCN
	 iBK+hKihTuUfuD8yne/VZwh+FuiWSJdiNyq626a9g05T3nzJTxufMF5MVE3vbsAxR2
	 LOBHFtDdMdZHDVmpUZ/Ij5SYVeWCFnwQ8Z1a3rfIbMod0BNR3HnYcQF9rgrTmk4olz
	 omhp5bfcLt2kGBkVRw2k4CJGwBJEhT5vlUF8XCR6hQTJyJhvoWr5rYyH90jA9755Ah
	 cMT0nA5AK42lMHVlb1GHL8/1dt3fV8Twpnlx5oBHW+a1jySRUtpraMh733i2EzLLYF
	 avV4v+LaOzwEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD23EC25B78
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171593474276.12339.1181801391662526269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514f56f307d5ae3f2e5c825db70898b20148c189470a45ea039d49481e1b904b
Date: Fri, 17 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715934742
