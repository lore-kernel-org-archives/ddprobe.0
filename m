Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1319A433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755372594; cv=none; b=J1bYIS9kZXFeN6wYxJNKK/kB+LSPywJBowFXHxdIUAbDak2VWabrxuKWtaAlzjtgYPo5Wnz7lODl/HeOYDuCWk3jT1+hMKFDfsrTvwlS/Ck4Rk3lj3Ijx4cWB/KvNbZEsQp6qUFcFvksrWfi6f4jvc22798jj0EPCnMKsUdyMzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755372594; c=relaxed/simple;
	bh=rR6AaInS3Z/4Sj/d5IIZJIxYO4pIDD22JgYRF6Ds9o4=;
	h=To:Subject:From:Message-Id:Date; b=SnfGU//QO3KUoBn9rgMQTspMevHLHTzUTJMvDrUyzKSRob+5CBAzmJKFzeSLK/N+wUSbDYWCtqEW8tO3r/ssnVUQZNxJbuFMXbPYmPIGDnWMp/Jf+MhOATNhnXl87kai7T+7huNqiO4ffhWtHh87PelQi//SKEUES/+zsYy5xu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2OKYuyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2OKYuyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0802C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755372593;
	bh=rR6AaInS3Z/4Sj/d5IIZJIxYO4pIDD22JgYRF6Ds9o4=;
	h=To:Subject:From:Date:From;
	b=s2OKYuyHC4gXMTwci4KnxzkvMMXzS2OLWuU4om7rc5GqWy94K6OWegCxVw54kogNW
	 juiDqGLE+FPosKdLyXG8Vi+g7SaeXINnew5V4p6mECthyAnWXXXzpjVFZUCL4swj2w
	 WunsQBs/Y2aR8zCMmndmCEvmaw35fSIGz8P8F7EzefHVSaUl/RiciBcfuDh63f2Qbv
	 AUDGUd6HJEpGTVWz3czPvisFfj586cq1W/RCDUierdU7ctobMOeD6HLYnVZ46spjKF
	 XLgS5J9bkaTtgq2KW/MTgqO3ccQ9hCqXjAQB73RlcQV9Klky2SJR04gEJfwInhK8sG
	 YKk6bjS5oZmgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFCFCA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537259357.18236.13274243091082342071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a00cf8b3ed9cb95c9b430b022840ca2b48dcbd100a2a6e4828245f85ade6be
Date: Sat, 16 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755372593
