Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E4D7083C
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744253994; cv=none; b=i7nIQHKtcMnvv5/T0N6xjggis0WsoN33vXrdEJ4OWXCGw8XSsWonabeBzdmorq2z0hwybmxPjeJmqlVyryqnc9hHSNKF3ZLLLkwEDR30/mJ0nnwnezFsXUBYhF0hslT6j7t8zfBnJNMBScJjbXOcuqSWdFMFTGf0nb6i4dlUtnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744253994; c=relaxed/simple;
	bh=rYs5ghFoRNoWj+txXIEI3qwokt/X0/QlufVY5oJFFvY=;
	h=To:Subject:From:Message-Id:Date; b=u2JhICDfp79JlEAW/53Gce3Kp8nUbBiOHofFKsSP2IG6RjIuX0ToUKX2+7HBU1NKTgovZ3PljBs7Vyx+qhVnN2vusmZyg9wSVE9RImuIBPTws4cMmYGHqOi/kNktnpxapbCRJZr74jeZHynXYCEpyatpqIc02wwWUhauc8Y5/7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFmMF1d0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFmMF1d0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE71C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744253993;
	bh=rYs5ghFoRNoWj+txXIEI3qwokt/X0/QlufVY5oJFFvY=;
	h=To:Subject:From:Date:From;
	b=tFmMF1d0sFZd55gddpR6tVYxRzE+znSHGSOB8orL9Ea+q79nlTLjOmbv0+jgFexHf
	 BrgMWDdH5S4ieHa3B7Pig9OD0X3HTsHfM9k9swkc+5uBPtNNY2k1ydtjDt0SE36+z1
	 +Bq5tHvJ0REvC2DHIiciN0uBgPKhmKJG5UEzu7Z0xzN6Xu02O+jvxBVKB4X5iUjd43
	 TqXOVsMyD/0joAsLji3EOME5sJjhPNL0ZQTRSfGfqfdLecaWIqeNngpCZA+oY219Hs
	 d1LLxnIT5K1wqFwB47BSJDcXaOU0qPfx8qo//Wxlty7MlXdYD5uWQEV5dPM2Mh8QIl
	 u5ewrfr8/C29Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9E6C369A1
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425399363.12007.1079384669922938630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee5a8e798940b9ef5e8ee16f9d5a2ae0133eff84338cda7f26262b90a233ef8
Date: Thu, 10 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744253993
