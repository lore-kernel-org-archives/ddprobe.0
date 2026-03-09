Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFDF3D5231
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773078894; cv=none; b=eDZzFRiWDJlQYKPlx/K5Iqkj/nh7rHbwyOcKPCRQhE+THSdsl2+2vWqMvoXObPhABPIT3inFh8SUiBh02OIdOgkkP7+Nh+zI4ps9pQ5qXUGDhVkFtq859O9t+4qfHZCv1jByoIyBngbYtzFAetoNBVbjpRO2axwh8x3+waME0DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773078894; c=relaxed/simple;
	bh=B43zQpua5M3kHKfzIv4tVtvewpRMht8uLQI/uu8fvG0=;
	h=To:Subject:From:Message-Id:Date; b=AMgImvGCB8Srfl6KpUeLZjF/7zwKj+p5HOEQ0p8bBIecQM0GeVIb2xf+CWpzEpliyHBxHyR0FiuLZi1T7nY1w6XZibw9Z7D11R/uyJxrsrgvlvwu7v+cfKultfno9czt9NCGi3c9lc5BKEk9YRcGLSsm4Qb8Na7CFkJBq1lIBmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATGu6Rw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATGu6Rw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6C8C2BCAF
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773078893;
	bh=B43zQpua5M3kHKfzIv4tVtvewpRMht8uLQI/uu8fvG0=;
	h=To:Subject:From:Date:From;
	b=ATGu6Rw4p4aMLaAkJUmAAoBIBXrlL9Njjdd8Lhx1fzjzqEr4oUxAkwkuQ6z78eRF7
	 aYPGsLLgfpWRpp37aXJjRODi6PldzcqPp0ntX+dRjthBCTfZgwUSgztYmiNH5Xl719
	 R6szOPGT0Ty/b1pfRMadat25UDL0O9PWvAcnXcMMYn4DEEonPwDlsdN4gbBjKoZsBT
	 Yyczf/8ONhoeQlBqV4WCAY05wCamB+oXh1NiMJjJ876SDBhIE7Zettr5zfkUrQbtLH
	 4HNYh4bsxIl5PIZi2ynevRl7yMDZBXl7Xe1J/4GWe0et+eOQBW5PL4d/3A4IGbYTnm
	 Y2IcM2iOVWy8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F913FCA168
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307889357.4685.7192507566093427357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37433b073178afce53750ddcdd415565355b1a29ebeb1114676fdd929ba2c7ab
Date: Mon, 09 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773078893
