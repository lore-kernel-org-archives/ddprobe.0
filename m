Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DBE2040AB
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744871995; cv=none; b=IQW1jx5KQejgvjcDxNgmYF+SFbpkxQlqB0xh4x+3cUv4HFSH+JCyB3GWWIb7boo0QoqxID7+dgPZzq7lfB9/5h6crldfbxqBSbzuttkjDDsceOS8mX7qS/UKfJ33Ew481EhCecqHLP2o7tIdgEjE/gAYiv0bnJED2dsOPSj6j+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744871995; c=relaxed/simple;
	bh=hL5Gqfwf5Xi6GEzACS9sEte5KDxlUWfyC/HFpTTHDpc=;
	h=To:Subject:From:Message-Id:Date; b=AVs3do8um98SAWX433mDekbnjoj1v9A9uQznL5XVaRzXPb9TrWIoLFcoGh8wA20ufYQSaaijTINaZUg1uS1b0g1t4Ygb65DG+VQbuMNqVITR2Kd6JCxJRiBQc46k5B4X1Fb338P/Hhq2Dcm90ixFObWBozrShatSWJJaj1/vkwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuu1pP3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuu1pP3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A7AC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744871993;
	bh=hL5Gqfwf5Xi6GEzACS9sEte5KDxlUWfyC/HFpTTHDpc=;
	h=To:Subject:From:Date:From;
	b=cuu1pP3UtwChNIf2iyqEphqlK/3kmidHCTpvW8xghD/n6BeoMXSes5zEcGh5wCGVl
	 cZ8jV9zhH/e3W4DkdJ7neR/3FHKOepj/IuM0GkuVKvKthwiqjmtyLfNzjhaCuYkOX8
	 EQa/EPi++cXg4fsnK67WdwcuuBraiRsLpZHK8I1H1V10oaThIFsEZ042/5o/O3MgQZ
	 zLCLyk/loEiAWWT/sw1PUA9cJS+F7xqk60elvjxZVsl8nZ2HEiCt3qTO/8MegSjXUM
	 y1XzmGHzV+21hCaREb6INxCXASG8Ju9d/ouNBM3RTEGD4p8zrIdvzh3a+AicC6y18r
	 QWnGlkF9y5pjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EB3C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174487199361.15036.15519896930083679636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be14e423853c30ffdf8a27271f2bb42f27a708831e9e948557d45e1e5e5fee9c
Date: Thu, 17 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744871993
