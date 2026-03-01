Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7961F5847
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772375694; cv=none; b=VEFtemi0b1fsnjykzlz4cHuZNTFi8urQWKRZ9VBa2fZH4IvgqdDNsDdprtZCOj8qsPx2ZfDigVhyEYeSrqpGryrvhyRVZVq/KP8/m/LxkPd8elgA2iSjgA3yt1QnugpVFj184ECK0zLu/B+nt6Bj13NjePazOfDgLVxHuOIszvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772375694; c=relaxed/simple;
	bh=4MxPxq3mzDI4XqFMHILI1xzxNup1qMiIgHfoUVmk92w=;
	h=To:Subject:From:Message-Id:Date; b=BzZi19Eh0Obe8/hFFQTcAsbk8vXQoIDZs4LypMQ5aBRVQzs+yx8ZSgVNErX38HfpOnKClLWbeZkB3HDWNUvuKbkxrHkzIWtamK4o2BbeHNuEkHBffPqCS6pYDzmEpLhG5BnYiQa8QRbeQfjwE0GyuHKOpPiAop+TaGf3rd0rp5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBOlVAG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBOlVAG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C916BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772375693;
	bh=4MxPxq3mzDI4XqFMHILI1xzxNup1qMiIgHfoUVmk92w=;
	h=To:Subject:From:Date:From;
	b=qBOlVAG6pkYZiUS840AbhiMPjyYPEiqCTty2w/slIetWLD5WDjD9G7Iv9RnUNRoiE
	 PupLfI6EEjebbXyLGYTjrbWxWmAa4jGx0Yworb7kIKuyI+LPWJrq1s9il/QKYE5PHc
	 iXSYKUKCT5rBK4qKok71B6lasq7E/nm4gf1QGhYU4wn6QL4yB0HhO9W5psliuTEVRF
	 lCLnsP5zEyNRENxtQKFXGShOOtpOw7FHjMzTCn1zDQavwQ9mc5QUnFLIybd9ShJ5AG
	 0zSBS5nwlKwkbem/WIjfNOz5WkqT2jBZEV8RuybVKSbQX6DwDUZzvA5qH/j32RNv29
	 Vaab/i+Wnkl/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F09FD0057
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237569360.20953.5868601372519834532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0e6a3e4e9c1aa6b7bd264c84eb0f31b562914733058091281a54e69166f7d96
Date: Sun, 01 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772375693
