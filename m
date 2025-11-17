Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34280274B23
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763418114; cv=none; b=jcxwVqDNmjptzbvCq5HVEVuW2HN3YwpqOZmF5OedR7ZGcRg9qzHdQ0xM88TWNlpFmnvBqxF9BWa8Mcry8PbNNW2WXC3lafNB+xnLX5gxHcnPESkOO7Cdx3oBg5xOL05IoObem4VzZUmVjiw9OP0CmanREJYQMXICU3bVYc54Z1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763418114; c=relaxed/simple;
	bh=dAc3RTbcwfCBmZcm3Y3Zv96GwyDVg5Z08wwjUJSmJQ4=;
	h=To:Subject:From:Message-Id:Date; b=V20uO20/lWIeFp9ahM8Do1YvZVlNV7spAd+HHQ7jMit22DK3nFM98amaW70GN0Z71veluJB/enym10nbVU6EkSMd0q7mHzG+gsHQQM4IL1gJ+nuiOg/v2A9zxcGLOZ7m969cLqU7NNND7ca3E7XEhp/1NU1nF+SHbfK87kyJ98A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbLGkFo/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbLGkFo/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49D9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763418113;
	bh=dAc3RTbcwfCBmZcm3Y3Zv96GwyDVg5Z08wwjUJSmJQ4=;
	h=To:Subject:From:Date:From;
	b=SbLGkFo/Xg/KZi3SjQhNOsNMbupXko+9jnD2mSHWmitXeAgDnawiAYxFAuG9h5sKX
	 WNuzAQA6CDnup3dWea/g0Axe+EQTozVbDWRpMSAkG0sxsbiHuUjcKLcRUsjkpUlS+M
	 XrspZOIHPtm42RSUx0OY44L/IPTUjmwSiDfJrdOAuCxDu6YMhP5zJ4HZPj0+EOKUyk
	 8yRXLWJv8KS5R3cgPy3TAprjZT3dAl7nxOchc4txGv7XJME2CqP+481tljzc6zcNGM
	 xUUIYq2YjsI4pLrxoeR5Y9KOYyMc4tWC9B+bGyMgRIsw/LJUywplWu0kdtrmeiFEJF
	 F+LmB/kAhEAgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A88CEBF91
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341811359.7579.8977170368596640092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3649341e016cd1083884e4eb64f893e436b8b211166b8c7c34530a861aa81109
Date: Mon, 17 Nov 2025 22:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763418113
