Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C02208A9
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738428954; cv=none; b=sl83ecqJv1l/s2z1sekapEoWS/dnzKMG2WwI5vpKoUK4Z2jk4XrCaJSl0KmCcZ+lzuCwBg7OR+8bWc3o3vH5gAGnE9B20HpfR/izok8mMPcNsB3APrRL/jS58O8QWpyrRhjPsgtVjsAFC1qxjc0DRoJqFkCOrg2GX9q5uNUwxsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738428954; c=relaxed/simple;
	bh=fLo8L2WeUOQ7uRufcf4qkTLjk7pRr8NFs2bIlH9RebI=;
	h=To:Subject:From:Message-Id:Date; b=Rv3XCC6GRChjahop3zhS1mhCAwQDvRJja20R46Bbv2ECIaIoEVFrjf7OZuxPih1bPIp6wAtrYGNdFk1+wt645h7J6zTi0mUDDkU0sAXT2bI4vY46j9cL2vwA2ci+4w1JIwe6/9J0C4qMVBalE0YRuyBvkLoskhzDTwAfUGoUYm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR6mahTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR6mahTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F77C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738428953;
	bh=fLo8L2WeUOQ7uRufcf4qkTLjk7pRr8NFs2bIlH9RebI=;
	h=To:Subject:From:Date:From;
	b=eR6mahTDCHVbROGGm4+w8jxboj8JCt8sty/Z4kZxCP1GNszufBGrAo0AP93uaoabT
	 pFcIj/n9+XOU0pHHAHdOaOPVbSk51n3UmPXEsRP+B3/wWE5QYgZ/3YEGhz5X6KmCqt
	 e4KIFbay4/Wax4WT1hljMPIEWCqxyjqLCQiQHMg3zfVXAWk1jyNsH8irVq9AcqOd0a
	 ZdmtUCVZGl0K0XFV3Y1q95j4rsiNUpsZtguRwmkMFcS0LCGyZqjgarN218n/3MNIRX
	 BHwEHCIkFm+mRa0ydgDPp04ZfgGXNSKIexmPnneuRsGNEgr9l3bCKHyaCD3d6/O1PO
	 BvwE6Ooee7BzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7193C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842895367.21690.14569800164220838011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88cfa82ef59799c13779a9d7162034cf4c0f67871fabe614368fc0b531c24252
Date: Sat, 01 Feb 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738428953
