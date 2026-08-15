Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522DB1A9F83
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786812034; cv=none; b=Mb/6fNkdnN55+Yj2s1g6hnS3Qos75GNhyFr5/GUB9a4DNpY3d2vMO4eh7QAI61nnddynJlORxxkD8OxYb/Q6sKL0jCBKALCCTdbWDS17NzpMYBSmV1epowxFnKhxvivVneRkT/tOqlxhPFvjrHzJMtvGY9uX62Vlm4oSWiv1vlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786812034; c=relaxed/simple;
	bh=S8sG/VW6sOUfSb86BCg5AOrZRyY8hGCFp/16OX7bCYk=;
	h=To:Subject:From:Message-Id:Date; b=kfg/mWn+dQu20eWYGvp4F0yv2QD1oqF/1DOWvZrMX7A9QDOqbGps3UbB1O9WxbhXZDUE1jt/h7/Smf2yV86xE/pGm9ki82RkQ3KODRLFE18iWx3kDTqGEudDP8en3N1pLfxlJmkDtwQI2U8vRNU6VK29VKdz+TyLppbLvVKAOwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujP0bxa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujP0bxa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D6CC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786812033;
	bh=S8sG/VW6sOUfSb86BCg5AOrZRyY8hGCFp/16OX7bCYk=;
	h=To:Subject:From:Date:From;
	b=ujP0bxa4zE4QTPul6Xg3w1BLnaruwERaerTAawlpd+F18oONpp/H+zQkTZ/ZgC/+j
	 EOF/nFfA14Jo9b8db4MeBVyrDnwLQmccROTD2hwSZ5aXekFY8BrHFs+NMTaT4/2eZm
	 bqb9DiwuBGop98yOza2klj1OUvRkZmPUN2ab0Bu2GgXsjI6kHUCaDNZ2Mxs/Zc5+qk
	 RmQJSUufTAJRDyCjszE68mhwQGp1+EiaJmbsHT/XQ1Lp5/Ci2sxXClykRGoN+1VbqH
	 Tw0WnZ5WNBVup+guAMvavGPJys/1FYnAhRbDZQwAPmOVyYzr9Aw+/jZZsd92KGCF95
	 H03ldNCtoK3ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B170DC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681203369.6437.9258319861946147893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7c15b443b7989101a8f1b019e0a85dcfbe3ea87228b0991e32d28402eeab62a
Date: Sat, 15 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786812033
