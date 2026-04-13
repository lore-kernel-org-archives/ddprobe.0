Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AE121B185
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776073054; cv=none; b=PkAeT7X+AANXDLL4xjy67LHijSNE4R+h3MavTFjhqyxAJkxvrgbxyvT9sHdQKfmEUULbLL6FsegDNjdHzJ6TU9xSqFTCx5I6IuIrG1DPQvBQcpxc1bED2IHAd3joqm51yE55hn2Vz+HnK7U6UGUZUbYaFTAb/ZavCDdY3rzMWSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776073054; c=relaxed/simple;
	bh=Me6i4xiFIn/4Y/FHsN+SCs6iwAuIOPZthVbzP5Dw4Fo=;
	h=To:Subject:From:Message-Id:Date; b=mrK3QGXnPey5f9stGXDcHwkpdAe/wfNwWx9YqhO/+UhWORRaT98fyD2b46M6y2diLk/k53atshQDrBvKfGbYhAXmFQTlpOYCvY2nCsyOP17Yeh0iHqKijxvsT615FpQQyzSZtRwEfVhroqXX0+gl5DYmWBS745P0er4kBZrnYHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsgZ5UOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsgZ5UOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0F4C116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776073053;
	bh=Me6i4xiFIn/4Y/FHsN+SCs6iwAuIOPZthVbzP5Dw4Fo=;
	h=To:Subject:From:Date:From;
	b=bsgZ5UOw6FSsnVAWKzCN5zRptOPalHy2baX2qEmFORJOgdJpnMXRXU9HdZ8Zk2miG
	 66Ts6i2uqi14JLhn5FXxdyZfbHjyR0xf+X7ZuFzKbwsaJT/A3rBPXbp+INFST3mdVd
	 wLuDwjhbEmQUj/7DpQnsB084Ov8blV3BII9UnRLSKFscv4VjvjXycZ8sI21WynPH7D
	 Z7/HIaXJ+bO4Jvp3CyyZyRCc4KyXD0aXOrra9zHts4qkcjdZWbHOSmsCWWDQYbiHp8
	 iTXcPd/KOmetITUPzhOqFNVFwKQFHUaYVoZEjFV5S8NE0nxopwfEpwIIY8jVQQJPs0
	 Cb67gQzH3KbAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9307EBFD25
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607305368.18630.17163337733237022642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c404141fecc22538b963f6709f1b9e4ba39df2aaef1889319c1563253521cad9
Date: Mon, 13 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776073053
