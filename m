Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D3728399
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722250553; cv=none; b=rzPV+lleSDbxEtHbB5MuDnXYoOOffIlfLmQRlOYi3SRVCyP3ysKBB9z9JdmTsOs97lwgRjkPBd80tzg711NtE+7ZzK4sFa5TYIoSfpkwSEP0Ul1EM25WV+911MCy5Sr7onKokhcUYdrFohS0/zXc6Wz16rC9GJ/nzBpGokwBcfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722250553; c=relaxed/simple;
	bh=3XnlvQ6NHT8779p+lQwrOhRIz2Jt13odwWJKOpY4j3A=;
	h=To:Subject:From:Message-Id:Date; b=Zvfp2P3smudKt6b39ZIdvlBuOndpIqXVuQ4AutqEbMX78CmvuUGp7Z6gn7YlQUacYkbG+9oPWU8vdfceHasNxyOoYGZZ6KpnRfYazYeC0TAEpRYZFD+K4pxAh62U9+YICT+B5MB/3YHdpLzuJOmAPyDNHRCkCHHx9DtQxeNwFtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hW+7Ax/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW+7Ax/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FFCC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722250553;
	bh=3XnlvQ6NHT8779p+lQwrOhRIz2Jt13odwWJKOpY4j3A=;
	h=To:Subject:From:Date:From;
	b=hW+7Ax/iVMMr/cIxLIAojUxq0lYYjbYuYi0FiWiTcO4mHy2ymUJ2H5hqnQlLwYW3C
	 fVRttbI6OAwvRe4SyWc07y3l9cUOOVaseKSD6+zDZ7ukxlF6KnIJd0e7pPNhb9Z0Co
	 3gJhHfnBy3/3hqabAG7dAVlAxFixWGkpJ5fWmLie65GX3G4V71yzQDn2uOl7n2iq/z
	 HzoIL3XofP/4Inn6DAxzfKTanF8dNmjcjvxWjzlk/z9XNMrz728Oer7JxFeHrxmOQG
	 ATeB2+NElG6Jq5B8K5OMrwQ60WHhiwmKiaX+9g2GtZDhGT9woK8fZ2+0mNefTza/OH
	 lp4bcMnjOVbUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94599C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172225055359.6264.15192995279642766280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a994d50dca7dbb0a13fd93fbee1c00b2c9cc161b14a9edbc6d448776f2380b2
Date: Mon, 29 Jul 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722250553
