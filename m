Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AAD3A1CC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717331123; cv=none; b=ugB6KyHvAQr90t9t82JnvJiHY730Ks9+Io443hiA4c6Vird4jjHxXjNI+9zu1eIu2GxgXNo6djMwqL2BwwxGDfVNUbVswX4x8xiNI3J4YIdHVPqT6xBbXC1SLqZL7dqE3dc8ApPmgRRVjaynnmzh7SR/1Uk29zPCgkY/EbyDytk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717331123; c=relaxed/simple;
	bh=y3BQ0mk3zcjkRE+pXOhOj2U+DSS5pPcp940rusz77xo=;
	h=To:Subject:From:Message-Id:Date; b=qmHyGUMhXU3e+FjOVyLusgqMP8KgpoC7eM7UfA7OX/ejjxXddku3YglaZecJh0EcmgybkEXmncLt7ad3s2Mq2RRAe5fBNyHlEJmEF9rvYdmylDk5p6fKcgJeguO7+1N11aJPwc7jXHM4MTM3XRjp1u+1S3m0tnqplM0Rz4EUPVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFehSU4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFehSU4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D298AC32781
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717331122;
	bh=y3BQ0mk3zcjkRE+pXOhOj2U+DSS5pPcp940rusz77xo=;
	h=To:Subject:From:Date:From;
	b=SFehSU4t7Y+Oc0/FGcSQbYrnK/+mpA5zfHllcGV6BgpmJ3lGbvHi9ah6IKK5G0Njk
	 SSOspeAJ1MfL/wbJCmShHafDjgVLjy1W5j/eaWKfGpNRoogl2Dfa2tso7smEaocf3b
	 YHjPL63bN0WB019qJuAbFmolSOjXxN7gBLp/Aqb75HqFyYY/WJOV+o33CpH7wiz99t
	 0Qzn8Ye8810t7u/BHNEI7w/FGW6NMYoiiIXdEFvVAu1EfJwzqrzKRKDX+fyAa2+2+/
	 NdGnLi8qhz670eGc9bIwM4F/N4iCC0s/SFNvfMK12EeJVpS5rn95RksZs74x1XsKTO
	 TIeQ90zXgtv0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1044C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 12:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733112275.19378.9932327877883573254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798a82943b502c504f4a2094f0014f3393d2877caeb8bbb2ed5b265694513b40
Date: Sun, 02 Jun 2024 12:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717331122
