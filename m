Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687814C63
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714182743; cv=none; b=IXPx5y+ARGkCjfUd6PLmOdLwsC2mJKokLOG6qNHXuu35GJUffPvQQHxCBurQL6GoQku1QS8JxfGbTCnzb3E5k8WCcGZc7PisQtqPG0r0DbwsnZAcJE/rOV4BeYbKuFSeCvBRpS6PN4+WrGUhUaTfway/jyDX/oWzgbPgkVxlbww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714182743; c=relaxed/simple;
	bh=mRCmNs9f8QJQWl/m61ruhRn0U3C+1dz7DZyMdZ+qEHw=;
	h=To:Subject:From:Message-Id:Date; b=I9ZbUEr1E1wgpOwgUfpLThDys+SNyzSRztNZDNzpGrBI3Cd8g5HjP2u7Lcvx16W5MTG7y515F1h/RwsrKqYQYG/nZhcwQOgN6u68Eg2YEuMSHfSbZG/fvpTCNXz++ydnRh6taz867rU5i76Dv+0WNpmWTd1zu0H9j/knHK5j8CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCoLCjKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCoLCjKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54F0C113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714182742;
	bh=mRCmNs9f8QJQWl/m61ruhRn0U3C+1dz7DZyMdZ+qEHw=;
	h=To:Subject:From:Date:From;
	b=XCoLCjKTupvPNQkFG1oZQplgsFxI2ehg+E7ROOxzLbYGdogstGuo3eeKjpVKodpM7
	 qDiB7cNhwhSfUDSbVzbNWi3ySqWDj2oh1NdL3+OzKI4GXQ+pHD3i1E2bc114PFehS7
	 cP7Rvq2FSJO6qREJWtBMTlsoq3L8xpSVNmmXeINIvyvsCDycbkOtjPXIjnJgTVDD96
	 oEXWnf+zWma17fDZ7K89wZjKS57uPnOsTBDB6UlfciL4nZF7nCczyj3FEIiK/bykWo
	 mL3xJpWjL1k7WOiWUNOKgyUXj/C+ULPTVe2efofAQcASwPgw/rLG0u07B5Tn3LouTe
	 ccVWPBz0scd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5F0C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418274276.18254.940996044372358070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90211839c5fb4ca5a41caa4e96fa967aaff8e3a05652768e18370fb8fe9475a5
Date: Sat, 27 Apr 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714182742
