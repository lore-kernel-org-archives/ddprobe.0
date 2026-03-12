Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E272BD5B4
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773301494; cv=none; b=PvsZLMnbj2TR+XwcWtH+AgGnd/eXoZ74K2itXkKBLPr8bHQ5WH92Sb03fUYQ312TdMjzsDUUKnGjRzjCuJRtprl/WUkJoGoAcXPJVgij2HE+EjzcMtF5a+j7Os68Vx+V4FtFnPjDcl6XmmBfjmfTbws0OjoBUJhC1ot7JfHc04A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773301494; c=relaxed/simple;
	bh=dgi3J6EaGldjwJYdw+QH3OLbPNPDTMKEpJ0MEdWMZ7A=;
	h=To:Subject:From:Message-Id:Date; b=f2UVq8vmVbpEPbwrrV89wEAo2SXpvx6fGD2cHvQVfib1bT8QWW2t0zobAyYu7Ylr+n4hnDObH+xDk2QmEbXynhqOBi9hRkw8OodnTF2cIgFwro7yBheQS7yfnjzf+VlPEuhK4lDHgr9ZD9H60cp2iYo+q2E92BlCkxCWe/n1z60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuoEEVRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuoEEVRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DCCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773301493;
	bh=dgi3J6EaGldjwJYdw+QH3OLbPNPDTMKEpJ0MEdWMZ7A=;
	h=To:Subject:From:Date:From;
	b=AuoEEVRaGMHI/Lb2NT1Yyeaswi+clmjz99Ai1RiC/QadX1hcmkDrtCmU5umoAAkDT
	 OpkcqmMzWUMAQq/+sSkP0HNyKGfsmT11NEl4B+poAxIrBOodPHMWIFPa+m/jWJaCMY
	 TyYceT2LgHacLUgU65fqhhQVGwzX+VZyzsG5pKKgI26IqHv3/OaMvQpiYnd6RjCo0c
	 Y1vSD3SfPGsx8HLUcDJtlDHVBJPIaqUBf65BB6Oyi+QmfMfuV9rsVgkJTZ0sD6eTBC
	 TnhWcreaKp6lms4IhDvaeU28d5irRqyN2jC9CRTkfTXRQ1msNh6veFFmL/vZjWQE8P
	 QlTt/QbDpxsxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BAFED2E1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330149357.14522.3150406583726059290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ea14944c0ee026be633f31699de900760b90f4201dc9ff9110de098442f950
Date: Thu, 12 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773301493
