Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F6F243951
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762304994; cv=none; b=ugC4l+rdomFD1H6SnMfDYqMbKe5xzbXHx5UaHIcs2vH1Qs5WgWnGwbXbmaxgI5JM1eKYGOpo5C/kb4AMaY1gmM8iARVD64gk2IYgNI24LAdTi2+SIyHMBWpfIZjWNhx64f87c8d3+T5XojdV8ORRZit7ptVOKN/digJWMVvNbnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762304994; c=relaxed/simple;
	bh=mxC5T+kNFsDguezp/bAkXLk9DX9HZAXdgcjdfpb2I1Q=;
	h=To:Subject:From:Message-Id:Date; b=oKOH2yORKootl/nCcIBgkUeLPCer/Yl1UdXkvqCQgepi9DYi6L4Vn1oVEc6JwlIoj6kG28yBVUGDvXJOgRmqzo0vvqDjUb6qxkkc4u6Tck7YfBOSIhxcrOuygM9S1oWDtvvNoKn71moeMkYJh+Fc8DfyTZq1tje/Hav5/CWrFxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9A8bqvU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9A8bqvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56FEC116D0
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762304993;
	bh=mxC5T+kNFsDguezp/bAkXLk9DX9HZAXdgcjdfpb2I1Q=;
	h=To:Subject:From:Date:From;
	b=a9A8bqvUku+EzqpdKVfJrCZznuX7gzNuTVngKx6J6QzKt23e6vhst5O5/mpRLT52W
	 x87NSZWwHFif6sTrktVkdcPN/lE2VKZM8HwF5lOETIXe2uC+11MqdgGwh+26/TUnef
	 bixpz75Xu2t0Hk2JhEnzZIjZRuJzEqHngtA+Db0GeojXPZYAu3DgxBWnUjdxkSIwhI
	 R98YM+UnQBhdNgrHkgK1/vU/myOUbwv8WUodtSlSrG3bUYD0K1SOMZaBnV74fus/eu
	 aVPSC0xHVClaSf/lYZAweqPKWJcVQHtD48/kQuB21kd6HjRQxWmhIGFOG2rxboq7zy
	 NRj6JaYi0oXDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C9CCF9E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230499358.22136.15940411628796214183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dafd5ae39af347d828536bb06c51aede58dfbbc48363afe282bf8002b2e4941
Date: Wed, 05 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762304993
