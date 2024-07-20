Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEEB1B86DD
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721519754; cv=none; b=szyhWEst5gRjidJ+rssSGpW3Uwixt6Q72e3lB+eaV03xn0d9Voikot9zfHnTZq3EmFIEUPZL+pDPGD1oln5sxBiPB+B46ennJpSTn0w4nEyk6e6WhVmwxbHTn+QfdvTdluum+A3LQ/Ip8GVVy2w1fI6/K2BJDQbgLfO5nYDXxIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721519754; c=relaxed/simple;
	bh=RdQkrkyWh8en7I6+8rri5Rc/JtBCM12vkBz2JWfbeKQ=;
	h=To:Subject:From:Message-Id:Date; b=K0Ub1yVDZyvHWvBSii77pP295n9h5HGmsIo81BCripbxXMgf/9rOa76ThMdknQ+JKeHW28ZpT8oE6KaoFu9qTwe84GD2Mbe/k19Pdvk2tbseKc9rsnD1Epf5garDRCyG4ALpM/aoUZTZhjhE2L4AgKH7SVqq6ubAAebXH6RSvqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAyY3fbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAyY3fbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC19EC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721519753;
	bh=RdQkrkyWh8en7I6+8rri5Rc/JtBCM12vkBz2JWfbeKQ=;
	h=To:Subject:From:Date:From;
	b=iAyY3fbTtuAoGgZ4vng9RdLp0q+6nEtYcyLr3UJovcOwEUASgsE1/8Dtvn9NpytY0
	 AtBBBsgU3GuMhPP2xCdhCfzTDa695GpozRsaBBww9F5WWd6felKYb9w4ss5cdNHlS9
	 5m1b1D16MBFUcwLMVi5hQwgbTBZR0oZ5sEKyKUs+9SvNt92HHzkQm+omEUapXqMfUX
	 HKnhK7bDiYoorsmHfO3E1BtW4nYBChCCX6fxwTqeARORge2VVhCu8paDPqfUfabn8d
	 PnKz3J2JqXsj+Y0A/T5PdopLH9/PUpOERiUfoPNqRhQ7qnp2ByQ1fNkhyCrRz3EU0B
	 Gj3w851f/+DXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF1CC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151975361.15704.7176512992728990051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffaba335dd2d690704f2367cb817d9802b021388782bf2793e16d1bfc621767a
Date: Sat, 20 Jul 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721519753
