Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1888928DB3
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760751594; cv=none; b=RK3nDtOjOZHDyrVxpl6FRDPfk8oTZzAnm0U7zfSIQghz4kbnL3xP/ZeuihcQ3LK65JZuOergipLfQ4bUrVcOA+RhVIorUDkbQjdIe2zhb4ZDsyZAse3QmWTeTQ+7uIjaLEJ2B3dG6MpBG401RrQ1PVqaAB48Z6UvD1KkzWbqUVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760751594; c=relaxed/simple;
	bh=Ft8YF9EeC3tSM+8D7a09n5yNF93bnY0tdsy2oaxAPa4=;
	h=To:Subject:From:Message-Id:Date; b=gRoGW7cETNxnTDbW0fKLtt75ZMK/YFEp9we+vRbk3c+gWY6DfGahaN/NhGEFcEGVdIWObY93CEGxrJwWLvvPEFw+2UunoPlwkB2a3DevsESD17j4lY5L6fAnQYrWzI54Jtgca3tFw7gr/S3wOcuBwgHlaT6LjMN2l/P/NzK4Zro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVwKmUTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVwKmUTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EFFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760751593;
	bh=Ft8YF9EeC3tSM+8D7a09n5yNF93bnY0tdsy2oaxAPa4=;
	h=To:Subject:From:Date:From;
	b=MVwKmUThuIX3zMAhFnr+U2Vr6CK2fC1bYIS2H2MW00OsQWjPRPTPLiYjBxVjE8n7P
	 G2H23LrHmBVf1Y3uobWmj6mH8De/cRcGdB6DJxTD2oPEVIIp1iMv3SBpAB0sM4Jwu0
	 KB02cxwaSMHKfGehLCeSkWK41nXvygb3gEDth4KL6rvW2w1EdkJmzES3RPWlr2ZV3q
	 1ir00zmvNq7CrGFub5P2Uu4bAiUcKVwDftUSRyRhvjWp4KpzN4KFcmYnterYksT/yI
	 FCOauqpTLiheQ+LB+J1DYou4CSL9bc0Wmg/Dqk5noW+WAfyexsvfEiND8vv2nfU79n
	 blb9fj3wgk2Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B08CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075159358.30290.13078089629365472537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f081ec16441dbce8003f02dc2f15e7314fb19521243135dcdf8ab076cf2d13
Date: Sat, 18 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760751593
