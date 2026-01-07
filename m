Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB8038B99E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767800634; cv=none; b=bJrTxdJncng+JpUU+6a9q41H6p0kT5ynjC8uo/Yvm/w5p2rxTcHwleFZQwjdEAYBV8y572NzwOFE8/k7hI0hc/L/40uMhAIqe650f2rikifR/DJUVOZKKWBsO+bgWvYK082O0huoHi17C5vV6LwryFGQlezeT+drcF8Fw+R/Sr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767800634; c=relaxed/simple;
	bh=ZWNXdKoVL9hOXW4Aq530vL4TT5l54g3mznOjYKkJVNM=;
	h=To:Subject:From:Message-Id:Date; b=Xlbv9dA0/ZYK+vUWGDkr/YgMOSkExNonS4c2KhidBUo9OJgNnAgxOaU4qCn1OCoEltZyo95CW5W8oq7w6QuD8WSrzusOdWgiokjCzihR2QwzbHHj9FESk9NNYRCkdXYoiuZ1D0l8mu+SMz0QSZkzg0bYQvp0C3k0ngp39n/hkRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AheXA/Tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AheXA/Tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5F9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767800633;
	bh=ZWNXdKoVL9hOXW4Aq530vL4TT5l54g3mznOjYKkJVNM=;
	h=To:Subject:From:Date:From;
	b=AheXA/Tnvou0vECyem9aQQ4hldiTnbKgZrjSfUHo/PUtA9OAl3IzhVdGpByxkG1z7
	 kBUe+c8sBjOw8u0/ejqwn1PRCOBZcAx2aBk7tn7ORe2aic1/L5wcnOASQt+BaVi65A
	 IADwL8W4GRT8FtnGkfFJerpgZdx4/PheyMyY0qA7Fi68d2vKVDfOue5gl4/3B/Er+3
	 cIeohRmkQNxCKEGtwOZkBIPWg2hcwU7ekl2X1Ga5x48QkwXFPlNuBM9zxbVrNCioKr
	 vL//0MYcn8O87KinJ/ldlNv6F3H6/Xrg9pYWPnSy+rb/5+l6zZD5KtPUsSsTHPHZct
	 NMn9/OM4JAXAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF49CFD657
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780063357.1041.904730670090233356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad491be4348cb5362373113eabe00927baf8f816e2253873a9b09ab49f9d1ee9
Date: Wed, 07 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767800633
