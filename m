Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D0522331F
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742425794; cv=none; b=k7j71CiNHbbTFQNfRQhwcYOkhH+ZbybOHPPCOjmd/2GaBWumuxnNnb/ngjzHv2St/yWvIYTnTC17aLOq4mOXfIhR/a/VqdsvCjHwYKzD6FD7ywtYsurVKQlw9wMBpgy6Pw3Ub9uruAes8+QkACoJVyb8LoxGNqc0e2HfmtHFawE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742425794; c=relaxed/simple;
	bh=UI79QwFVyeE2QdJOc/dPjmKEwpnWkogdK6ufIioZ/mw=;
	h=To:Subject:From:Message-Id:Date; b=oZghq84+Wc8/5xupXh3DJgpZ/x1sR4xje7/9v0kiWaMwj96yBpTJeyGNCKINBSWhd8uZJhECC3uxMzlO8cly6XhvtaITUOPaZlx6JHNI67VOq8g4JF9ffDN9q4+4hBHtyivxdGfwS2+isQChRNoM3OvFR+e2xMbiyBCgUvLznjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emXzQFZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emXzQFZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4A2C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742425793;
	bh=UI79QwFVyeE2QdJOc/dPjmKEwpnWkogdK6ufIioZ/mw=;
	h=To:Subject:From:Date:From;
	b=emXzQFZUb/kRIjGwAauLhC6DWMKfdLPQ5AKh3YJpwNANtjAeRK59xP3VQ/IvzxrYZ
	 wn7mm+1wdD/R3qs1rgSzXH0TRiorcb5vXcCXwMpPL0XYKuxx4Iu6nx2/Dgm2BAwAzs
	 pjsLTgoAVg47/jN7vrJmou2H0OclnRoboaxHQBp7BVkZi4KNOyZbZ/hBuPEe10S/jF
	 e66YCzC91+SHu87yofZ/T/RB2bOZ9Upp2oepW26N8wTdtijsVsq2oHh6MntJEN4Vgx
	 6DQCJSPpOQUF41z2kglpY+9jHoo2nWdn4xTuCLf2MPRgw8x6+CYPTe4MlQw2um20c/
	 5m+iJ6gvQwThA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0654C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174242579363.20001.7716743490062742171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad326316f3dfc0941434600ae57e60487c765e0088a1674a22f002a0ec3e9c5
Date: Wed, 19 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742425793
