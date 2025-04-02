Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420D81514F6
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743584394; cv=none; b=jDpsMTpPHOmuXBisWOC0A9vsK1EDwCTth0B+eX/0bm8c9YuWltIhDMiUOw36DcVSoIavlZqF7vmuAfe1bqfGXx7B5qHxjBUbo3DHuYZiNwL5SHG/FH/ygnE+YdfaFgpRvRw0Qn+ZVwvg7zi+vCT6zJ6kcv4I/Q9iKxbUb7ABcdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743584394; c=relaxed/simple;
	bh=EpC0+mtGTP9VCAC2apdqktY0BgV4MqGGYOahFg4d/lk=;
	h=To:Subject:From:Message-Id:Date; b=Eafc4PglmIO1gduPVa+vxLbObCUguuAeWPlC2Iwa1SEQW8gbZ6D5gmB721ptAf2kPfO46yGT5tpwVhgqm714uZVZ5Ktppm+6iZnjTy9pLb/UpTIOh/HpERtqt9Dl1/TJK1uKIwdKfFj3W4KbDEfGJG0xNGYCM57l2zDhtekdxGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=at9WQz0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="at9WQz0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CB2C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743584393;
	bh=EpC0+mtGTP9VCAC2apdqktY0BgV4MqGGYOahFg4d/lk=;
	h=To:Subject:From:Date:From;
	b=at9WQz0Bpk63GJEmgpA5p67s70dlmDScB8hkv9+PeLkbP65fgkYQBwM4CzfuQ6hLE
	 4624i3M3RIOrKOsM/GrPmpce2LWIHHjQoACNmzUFCPPZNSdhBMFXp5GYH547qyLLOf
	 MqXA6P7x+gsO0tNrh75D7LaHJMLoiW9rTG294hEGHf+6WiyLJ30D7jBwBrOLnyBX03
	 KY4E8ae2FqhvZcgbm84NOz9v7YYyf2s9WzKknO+3uxs1+Ycn9LVAsh2abcyD++wFPy
	 iDfWkJfTJi3jdWTyptidXDR4y0qnDN6uhlQCNcs4EdmDCv8LpH2HmjDiSacC98Y3y7
	 mp7EuNsRL1Ifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C2AC36014
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358439366.30125.5825414593483104978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767532843cc9948383a912880f6a4fc50603fb71146a0ccc4aca16723ad9cc28
Date: Wed, 02 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743584393
