Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C4314F102
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738267555; cv=none; b=I3WLctef9RnqOdmpo3u1cSrZeHYa58Ew1ygMjI4v4tjR4B212CpWUCH0wQCbPaFFmXgAQ48y9ueD/I3duReJXUbbqtp/D+kWOhQaMU3p2skUQUqO6uZVfQ1BSCZ61U61keBYi2IKyA7j4RYPXPdRrfcHqK3H48XY1FfypK64uQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738267555; c=relaxed/simple;
	bh=tTCiWJ9BPdXPJ0kJY4RVum8Q33uql1C4g45tKUeCiG8=;
	h=To:Subject:From:Message-Id:Date; b=SFIbYJ2yCPUPZyh91oVB4/hksp29EHgoeOmklGelmd3jUBQwEZ43YZEf4JVtG19JxHEFC0k4U+/ChGcAImlJa0qprA8sDwufmulMBeo1z1+2tsQL1Wzf+pp95XjssC+wEa0g7SSn2XRS9NjSZwOg40D/L8t7MxYlnTswP1rBujo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OA0wOFx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OA0wOFx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF7CC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738267553;
	bh=tTCiWJ9BPdXPJ0kJY4RVum8Q33uql1C4g45tKUeCiG8=;
	h=To:Subject:From:Date:From;
	b=OA0wOFx6Y47prcMwMzyjqIrQFdfZmcNKAko9NJ99/yc2sVxYpTugHg7vZNEzRkrJy
	 U3sp1yFB4SwJah0nq6EQPfP6otUN6XxZv5olN32+cEPVF81ktGx2vR1Dr1DZDQNRJ/
	 tseJbHlKCyHEniHsXk7cjMElbBiC4ivdS4r8bkSmghP1OfbV1T/HYCUvicALfyMNJ1
	 XIboNC1/mlbat4ivpTJcA9qiiro+TQn8dVOJ4ayjnRUlx1kHs0Vkgp7yHobRi2WChJ
	 qgq9S7pzUPv9RM8/7/+pWRipoWcNaRFcQfj9kz8n09IjfA6Pea71gLNFdFmae6IZjG
	 NSeYelSqj9fWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95765C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173826755360.12535.6745995451377188704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206de46862de9dcc44355b624dce0d62e9e41a474c088f446885e102574cbe10
Date: Thu, 30 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738267553
