Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFA614A4D4
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724837754; cv=none; b=ovAHEBRJ25axKPTwcJzuswF/odA4PCQE1NAE+Wp//EuEzCMzXs51GH6ocGFHuYJdchEm05N+h0JwDcK2ykcwbiu4hYhrVdX22A/ox0eZoOgvlr9g0myv3u/KNLof2/qCs8eXbkT/zmencH1dVlw7FSa0wCdGxKE3r6JqeGMu4xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724837754; c=relaxed/simple;
	bh=4mFiHq8Fg62ZP/r+UEYM3YqjwTwIvGGPn+0c06KwQ7c=;
	h=To:Subject:From:Message-Id:Date; b=DBV8NAyfGBssFBGn+KfOmJNOPiWpJ0q8bwftc+87khi+LYXJ0zccnJ6vCXltUIaMa9nQiJF5kATyyAqXF6+lIxuR1Hxq4RoJdnMfSlsvD4/7rMrpJFQeXbDx0o0Rd6GgeRn0lqeF/QeDgorkWiSF6WRhMg0XroOfggmp0G8yGT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITaMpSOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITaMpSOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49BEC98ED2
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724837753;
	bh=4mFiHq8Fg62ZP/r+UEYM3YqjwTwIvGGPn+0c06KwQ7c=;
	h=To:Subject:From:Date:From;
	b=ITaMpSOFGps7edHPUhd4l+uy5Pr9eSGZzA6CqYrpdHQhdi+tGOjMFwYweK481EajR
	 pZGvjUyfDVz/UWC5ZCGTdGCm4RA7MPQogsNVRjrgX3K3eRFKs2+CmkqpEgasZ2KBP8
	 eW9LcMWBt2mJB0GoNcWvXxnm1QIJ9LgqRBPHiRUjyOvubdkcy5cPP3X1uD4Uue4CWX
	 31aREalYWEdckLz7zrjNKfCictmZb4Qar3x8IkD0X+zwjcleGVs+ufPVOOxLrWF4Bt
	 GzV+sbT38zuOR5exn2GNXzpGjcWhX+1RmJBMJtCv4RnWJ4tf8Tv97JYxMTR1YIxZVD
	 kHtJXVDyqSOdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F75C54795
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172483775358.4839.17241848145359392713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ade25a7de95d862ddff4048ec5952db25f0de190076526350328944fe1f8a23
Date: Wed, 28 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724837753
