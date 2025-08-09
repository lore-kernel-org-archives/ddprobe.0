Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118D6279DB5
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754730594; cv=none; b=gikOa4Hnon87/L4/LPr4bVMYk4jOPPGZAb/Rw+/LcyDeUtuNYCH4Sw3evqXvcHFQqtJ7S+xBFHDFgpdF9sk8Y66Y6nOVsBN/C+pBNOFvC3cHkpKhmDktJMLLwu2ZHYwwMyp+9Ix5sw7+87S+/vdk538LuJKCykx83YCrUC+9hAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754730594; c=relaxed/simple;
	bh=us/FBPywwRJc0GI0jVLTvWxIJcG5vLTT9yGvsz8j6Ls=;
	h=To:Subject:From:Message-Id:Date; b=oKbYkl4Xx2fityAh7i/xFCQIRawov0GR3c4amOG08bTaAOYghuTjQQCs1L0p3oXAkt5LwQx4YrfyRtVMizlm62DOePD8N0h5CIXtPig2RYCaRSKUjNSYxYXiu8+aZtBTXnsqoEKnIy++jb+4e2XNeEVyhuCjc2n9wuPr9ENEVUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9LdosXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9LdosXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99C7CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754730593;
	bh=us/FBPywwRJc0GI0jVLTvWxIJcG5vLTT9yGvsz8j6Ls=;
	h=To:Subject:From:Date:From;
	b=E9LdosXF8AhOtGl6EU7m60o6YXAHbZC2TyZSvhxfwTNXPgWz0ftGWr87vgK+sKBSe
	 VrmbFdBeVe15yO6f2Hp5oAV5Fr13yN1P0HksbBqnN9CoS0cxMLZquzSZboO+be3EUH
	 LSCmidx+dZ7fK/jJDmXKTPIoTurCB/XlQIjD7jxUApj9+rycEWRD7RsCWbHwg9bvsJ
	 LrTyrATHAshQjHwdWcl/nHJllFe5nuE3e6gKXuckg2u1QpLr6KUnDsA3Ni9RmTsNJ/
	 imPLnxNWaPTp9hBcEk7A+m5dfTe9Gpj88HMgIC61SMI5LE4FAFFuTBSRuG+/PbYNHp
	 MwfxP5QZxJ/ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF6AC87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473059357.2063.853249971094459358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638c2aa4d6cea2dd7bfcd00064be4f96df81c194fd3066bc6927a689b11a63af
Date: Sat, 09 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754730593
