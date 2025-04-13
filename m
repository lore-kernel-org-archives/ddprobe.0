Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5D91A23A5
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744558794; cv=none; b=jGx5SwFAxI3ghBjfbE+qNe1y7iR0u8ieCjfG1tV1c3TT23QDEn0qXJrpiYL1j+s4TU0aTFPF5gODf9A8cvt19ata5Zcrlgr+oTY4yRRgkFW7rBB4Rx5q+vvPIsXDD8rFF8V4Esa0I6GH0p732UgDMMCYkwZXZCpnSS0Kve+SUF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744558794; c=relaxed/simple;
	bh=YgiPvYaVijPRGCjx5qcZhv95BYHzgpXor0eu8cE5I0c=;
	h=To:Subject:From:Message-Id:Date; b=TiqPTUekoi2hcHJ0UQLub95efLXKZ0oZUXrB43NFP1lRa9zwqmMgRVZxsQEUjVnJk+LtcgS2HAHALUms7AAPC0xuikaBdZelWHaxQSF2bH9rXaTTTnOmO6tLcWh1VQP8vYahME2O9JZOKlN8is3P6hkrwNwIAZ/v+DT1Xyvutjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yj43qCS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yj43qCS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F6DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744558793;
	bh=YgiPvYaVijPRGCjx5qcZhv95BYHzgpXor0eu8cE5I0c=;
	h=To:Subject:From:Date:From;
	b=Yj43qCS9nckjdRxapT+3GYGsN2bSYiQHGfghZu8K8cidajI2aJB9bcu675GonC59m
	 BtOto5ajo1LFyYa0KhsY9iXbi/q+Zc4iIV0Owos5eb/kBYA7lTUc6bSofREt0EqU5Y
	 EkrRFk73kGq2Kkg4XIv2RtWLGvOr3aePI0TUstF5wpuve4JcG7dgUct3/E2+58zuTv
	 JGjiK2boZdAopNOT1embFO/0BRtMe6iZvTc1NXzS97G/sB0Y+K0GWNuxVRcoE4nQ6W
	 KCWYlBk4QDCYahcRVOnJSdEnT43YvHYPhacRV7u3Me9c4CIHuIMnb7TrdFWAKDHxqJ
	 nHd+8NGm3sXuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF25C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455879360.15885.9750235217941460319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc97727aa3a00a21aa1b93a27f25a81c5e10c30633c2aa55881ce418eb63e12
Date: Sun, 13 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744558793
