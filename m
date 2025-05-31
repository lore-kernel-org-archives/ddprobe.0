Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB9754652
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748668794; cv=none; b=FF8UHbC2MvIPixuZR6HoELkynfAsPuWZUfvXL11XYtZGt7ORjhiyEZ46nfOSPQahK7c50nP0Z/EXGPA5eFJP67yVD0iVfKkk2qfUSIYcYKkG4eK8cN0htoiJMUyhlYwgKEMEn+W+/c6sLpABklpzyT6CFk2k8OM69WDnpKXD2a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748668794; c=relaxed/simple;
	bh=2VL2uNOJdptya9b76t0CxnIOF2pzk34X5PEc0sFl31g=;
	h=To:Subject:From:Message-Id:Date; b=YW7V4uBFIPi2YZKCPzrg+CyrpvBWtRvGBFnj92KJtfE4QlZV5/q1tXOAOa8hbFr0blFin0wTwzQy+Iu/WvtazIUTB8/P317cTNdOE3vDmNsSAT3kkVBpn2+s0zHmS+mqR044skX5mQJczqDvvWeELgQRsdHZQ5aD6BtRV60kyQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWdOv+iG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWdOv+iG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A183AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748668793;
	bh=2VL2uNOJdptya9b76t0CxnIOF2pzk34X5PEc0sFl31g=;
	h=To:Subject:From:Date:From;
	b=fWdOv+iGYtqo0UTw/Z2zw2D+BvCnGr8nwt/WuIJIp9FCrLP3YGmbzdxCZpQj579ny
	 64ec8+3yNtI/VPjUHj1FwDIPHo9PoJn+vW29wIeuFqzX+gIaWbpFddO+1Ako7bCHLe
	 YxTvhHVfvde+NotiFGpOmlLXpnmIX0JC73DCXxfRKQaM0yRDnJgD2au4OmHCMfFV+q
	 uvEOApi4FpIocDGffo9Ws4vH+KpYvThGKxFqMk6kHpDbkQpqI7P5pvZnaTHTH7c+US
	 y1HILESrXoZSAJ9lPs/19QwPfhGFK1DScWmFH1akfVYeISl//bfH/Wd95k9S63o0V8
	 lVLsJ8hFy/48g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F626C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866879357.26686.12420453201748644646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7b83829cb87db425d6c6501bb0888d7646c1f0dcf3a9c57142c58d718f3b2e
Date: Sat, 31 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748668793
