Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB4A032C94A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767779633; cv=none; b=kTPAwI57PIao+rc/qTyxYmRc/IEfOMsLdPQDLSY/CLdxITy3hZL6h3eiR8sjntyRefFTaNCCF6CDKSS9JZgzB6N1S7uA4+5VWNqfMCENFpkcui12Sn5igZF7KBXIOALUpNbVo6+oivs7UL0wNZ8oBVmvI1Gdld6AlqidsC9Hcoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767779633; c=relaxed/simple;
	bh=Gq3rJAkDdxQAGCaGsUkvroTnBu0X5FXkegYb8wB+MOw=;
	h=To:Subject:From:Message-Id:Date; b=ev9W72EWegNcK2xkrT+Tylz7gG8bb8FPy0k8yrB8VIennHYq/dz/Kw5zvrvDo2lktI7vd1r/yDTNCIVgwPjP8m14090rXB+uUJe4AQJ/y3ZedJfT4Vzh8puouIWceNBzf07glqagQidt/vC/cMTQhaLJdPjBqCOBrvpvf3+velc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG5xSVpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG5xSVpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBE9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767779633;
	bh=Gq3rJAkDdxQAGCaGsUkvroTnBu0X5FXkegYb8wB+MOw=;
	h=To:Subject:From:Date:From;
	b=KG5xSVpNlGAtT++NOBz1iiWnt1OjKo1oZzRqBAVvcZF9R99g6LafZMPY2QfM7rI40
	 uU1Yp3CctbjLrC47xbxsS1EqY66138Mxwa3JQa4B3zqLJw7NM71jvwXpv/tP9GiG0W
	 grEPvzkNAWCXuIKF5P7X/r/cb6W0w4mylP79VnHW7mDSNmezdxcBokd6Px3MWoe3nn
	 ca9713yXfz+bLXZY04/07wgr9mWbhVc5etQg1dcXEzA5++od3CpwJ4PE+h5LmXbLco
	 CRDojlvxoeZkrqGq6FWMBKfv2Zrb+hFKB/zIO/7/x6eXhOgDukuuUGUJ5RuSnrxO9f
	 3nx0AKbw8roLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3D7CD5823
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777963357.24132.17364313353780274340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c756a5e232819508ceb884938c0985a120ecf85b860d5f9fae6df77a29397abf
Date: Wed, 07 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767779633
