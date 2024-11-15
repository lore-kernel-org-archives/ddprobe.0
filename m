Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ABC18CC1C
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731662754; cv=none; b=dhq8wgj3q9C51jPXUJCijG+1wV+phFMUm2iGiyE5SbzPGQM0zgMKJ4qhi7LfYX776Agmp0MlK/Wu3I7BBUWy3gipqFqGCKQt07RQDUhLjK41xH+66BvpBMdjeOU3qVM3L/kgjxcfDA0AKk8t9a4SmirSHjmQ3+5e5XAxSDeyPUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731662754; c=relaxed/simple;
	bh=xnMsag1qXaJUS9ioa+ST5iw9TfWD1WJ9JWoYVmr4SGA=;
	h=To:Subject:From:Message-Id:Date; b=qlLJluy1Fir2ZNuRNs/u4Lqs4mD7bx2BFOfeh04br+kRyKaM+piMOZCWkTM4g2NnfwdRrwjdWUjhp4jfTwmD/KHBATCwUG3ZJ/nenQx9y29w/Cs4Sjt/bR3fVC0noL6AhecGnUlhWOWh45y+Fm2wgx77GeaoUkR+AKR3nzvMHvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1hMNs+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1hMNs+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE154C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731662753;
	bh=xnMsag1qXaJUS9ioa+ST5iw9TfWD1WJ9JWoYVmr4SGA=;
	h=To:Subject:From:Date:From;
	b=k1hMNs+Lzz+N56mW3/8dONaGC6cpTtw+tT9ezOrnLuZl/v38jwUdFidEStWP9qmvK
	 WPmkehXuKS+5xPEUus80/KIT9EBUXPquGcEWqVspq1ER/2TAuncsM99wp+lR0YuAzZ
	 dAOKSljXYPW3bkIv5e91scFKOTEghuBlb5t4VwSC/C8X/qYkZTOuwjTpyIG5Gqhq6f
	 G3jZ1khvZ4vpX48XLb27oBvE5VUzQVrtEAwvCSwhQdv5Fxc3Y1zpB6OZ6GkCYfLMw3
	 BjUM4aufGCM5Om/mJ+e/+zu+hICe35T2P67ZHEls368sFDOx9NuHXB2QEdrDqSfvWk
	 /fXJio32Nu9cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986FBD6DDEA
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173166275360.13680.15686523429736088241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a17d6408889140dbff27889ee9790b443542e2c4153ff4bb9269e2123acabd
Date: Fri, 15 Nov 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731662753
