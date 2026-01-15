Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245E926F2B0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768512834; cv=none; b=e4E6DKDYfoO4GO5zxXnjNKiwDMWNuguNCTxcZBalz5KmyOQIdmEjOc+8AV2OHqYKx4ITGZf8vlqJ8hCr7/Mtd2ZtmIYBPBsI7te4EekBsvBt0yQ73Z5dV1j2/A/40GD7CkQAeoDpga5AWlhEKu6tT1udvJDcEi/wPkn0BPMx62E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768512834; c=relaxed/simple;
	bh=+Gny+NEsVAN2mx40cpzurv9qlLmqhRKG4bDQ0Y61Ais=;
	h=To:Subject:From:Message-Id:Date; b=gKgEWNbUTph3c7Mte0GsljbvjYZ2Uah9+Gybie3GefKFgLcslJQNdzJjwhEIw9vCXJqCogm0VSHs2S6D+QsQUUMeCdPTUTXtj6XtPcPT+qRapnI4Phci2xvKJHKhVu/cHnDmP8NR1Udoobpu/+cT9zjS5pgxuDX4jlQysEAb6Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sg7ZWgLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sg7ZWgLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4180C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768512833;
	bh=+Gny+NEsVAN2mx40cpzurv9qlLmqhRKG4bDQ0Y61Ais=;
	h=To:Subject:From:Date:From;
	b=Sg7ZWgLjuQhpGEORKiUoHvyWqmLtNe4IR+VuelnXtFqrd9AMXdjpFQx9K/3d4m1qR
	 63Dfaci5Q2Rh0bu+OVUcOypPp1pZRMnLql95k0ibOEaa9Bg3ibpwzMx5/8CQN/j9XI
	 aDCWoNdwmC/4r+r6kk02OU0rdnUli6BzQUsvWjQd6IZR/2z9MWTCtOMqgvxVxZID6z
	 bZ3CWEwpN1T8UGxkKt0Kvn4/Ba9XxFGH3b72BELhyvHSnnrp63zb2frPkEXc5qqkW9
	 aSuNa9rhbQpeUMKC7GEy+3jl4yDzOAe60kQru104Xmh5T9LKEIqIslilDLYj0kASFJ
	 ITbxrkdlz60+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A03D4662E
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176851283357.25437.9916280932283955963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412868abc25926afb704492233518d8e2173f254fe9036abe0f49d4645415d1f
Date: Thu, 15 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768512833
