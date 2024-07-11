Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1FA166319
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720717643; cv=none; b=quOQGwTaSqZtw3yK5m8wtZLAg/TE/hcmR0ENBnMqpn/hNrZOt9zP4yIdJH7q7jO1ZHgJi+0ybb6ThOBqeiAgiuViMHCRpmeUKzgduAMm3ZVTUgPVOtkH85QSEbV7ziL3mTm/5k09N7DFuvYvfdyatjLaDyhaGIMs9sz59mdHxB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720717643; c=relaxed/simple;
	bh=SbNtMQxMpDsXL/SBA8CASsAd/bvQoWVSZvszc6qWi0Y=;
	h=To:Subject:From:Message-Id:Date; b=Ugk5y/eO8SiNLrLsqKn3LhgP0RnZHvfE9EQk63RX1EsuGNPsVG9oLGdth2at8N4qPH+5vtNMj/l3WZa28D2+G6lpL45GBMFsB+/NBw+L41beOcXQhUq5HrizmiFB2GW+M8/SFcPeSnT+peXtlNOA3IcatfrB959/bZeV85QACM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyFwz+yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyFwz+yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A4BC32786
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720717642;
	bh=SbNtMQxMpDsXL/SBA8CASsAd/bvQoWVSZvszc6qWi0Y=;
	h=To:Subject:From:Date:From;
	b=UyFwz+ykKjhjLwrBWUGv73oEwDG2ps3quOUjDkKX4TFXrhZFWOL1ZsIc0mT0lVZFU
	 wMCbrkfVlQvl78Z/rOvQyczxHkN+tUzO54a/fvp+csp3M5uxzp0h1Uxa9vOOtKol3r
	 UggYtHve4felInnY/UTD0lIY0fr6PTEBp+cwhR33THu3Skv5XH0i1O9XktrZJs3IPT
	 Sx8D9u85F8JAECUjN8DKzKAfSgwVUh/ZK4TCA1H0AIT3cERaCMwpWcH50TS6TnSMYb
	 +1NqdNjoN1p+hhxbGeq8UsoLHh32wuD+1HUbgbR8A+PDVvk0eqGvNggW3dtWukgAzd
	 di88aYwgaQCDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1916C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071764278.11058.3213757152336230434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3469fe95027be8418312e26ef6c6a5c997de837b526ec462f493d25b8b40029
Date: Thu, 11 Jul 2024 17:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720717642
