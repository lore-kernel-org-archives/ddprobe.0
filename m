Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FA41D6DC8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742576995; cv=none; b=cKnjONYo93dA0pDcF3U+UgttLgxRIvkHa6Fod1X9mYjFS47QY3kyniYfkh4ah6hpI1CkvzP81tapFGoHtY7vLD/JCMrKhxalxS/dCnv4u9aQV0S6qeJA5pwT6Y1WyDHN5dDE/poU+G+ACFUmB6tJIDH9kzocUMJqnGgYGBLf4MA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742576995; c=relaxed/simple;
	bh=YnkKdrRhUZAhLvVsAPNH//9pg/rw6ltTnbLyJADw5L0=;
	h=To:Subject:From:Message-Id:Date; b=oA1MHTd/LRWH7JrYQcmYgLazJvRc7LD6kdTgQP2rhp6UYF5Af/141Dr7kAuV/8Wc1iNvVPqegMp7hH5qHOWo7xm1k20+4Agb9RoZocs+DvrufSYqMYNP8LhuoN8GWAaDiQ+UwHQBaJE2YuvIx2eCEgA6cksHBDABK+N1/cDj0hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byGSq2OP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byGSq2OP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC3AC4CEEC
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742576993;
	bh=YnkKdrRhUZAhLvVsAPNH//9pg/rw6ltTnbLyJADw5L0=;
	h=To:Subject:From:Date:From;
	b=byGSq2OPrXi5ZjDXAkMKCQSho8Z+7yUK4yHACDg6RO3VL67a0mVAjBWMy2d1Pl2Se
	 smBkcjzC/botZUVS3mP8Ypn8XF83vmNxVxeZQii8kACYWsJykfI/8mAFvBrRrrJeJn
	 2WGZoYg2qBZacO9T9GLV4joCMOUZk6zpMDhkj1KIIc3t8ax1negqvTd8AnTIZDwGgN
	 GWMbmaCbSyxYN51lp++Zk2KI0egx7GHnOQjuRDTstwK7IaVJs0JEawKKDPs5DLNExh
	 vByFd1kcjliEjfOXvdS6WWbZRaOuQhbSzv6z5B51aq41XOdCpM9NiRDgigHwuoVydj
	 1PhTLpu0AFUDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB27C36005
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257699368.14162.7222210879449998081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9987f1c8a53232688178fa5b86762868f2f24ff06f606b0089f67290c49fac94
Date: Fri, 21 Mar 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742576993
