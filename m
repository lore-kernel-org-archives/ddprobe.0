Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3C7635D5E2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776959853; cv=none; b=RoaAhJH20H3XWJn+weMSftLzUUgL2gIeLrEI5DucM3vixobHvgzuTRFrmhk0wE3p+qr+SowEoIm9al5NqtGRuErlLVOxSR6VO5z9EE9peUHv1GlaSCYhbwSCk6zz+seaEraIN+34njavBL0VHPVRd2kPIct/arTdgu3j5K5fc3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776959853; c=relaxed/simple;
	bh=gLpwbVxabRErs3jJLQtAJk/snoKcW/6D+vgz8C4w9Bk=;
	h=To:Subject:From:Message-Id:Date; b=ldMeqtZbAvN3VLH4zY849zxSS/LwZ1Ur59OXzOu2lD6euko9rDgy0BtoV/SjlNTSvi+AX+UyDpW2C0a1hSGu2Vp9207ClwZQMxmtm2MUuGyql8ZwAyKnry4fqFZEkmZJiTyHCpCXvwlq4nUvZTn5Rzf5HDx/F4Msb6owkepaF8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj3J9Tog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj3J9Tog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8748C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776959853;
	bh=gLpwbVxabRErs3jJLQtAJk/snoKcW/6D+vgz8C4w9Bk=;
	h=To:Subject:From:Date:From;
	b=Jj3J9Tog0BcD9l/tdTQIzZiiXsI1Dk/IBWXTRc3SuYQqJf+GJ8mtRCjKKf2UFiEfD
	 U8zEeJyYpArlUjm04Cu+i4wnc4wPT9+CG7KPlczYXh5RQJHek3WJcndI0lgn2UwuRs
	 PiAdCpZrBTrmjO3DEdQJOOscTPD0ldkjtWAohgWzjsC46fPN/qi1fUc2/Cns/99FTV
	 4MlUi2RlFS8HA/XMlyVkpuAigH7i6J595JtB66xbVt20E0Jga1l1j+LIHHJtaL33IL
	 uHLXtspmX73smIre/NOixHpbfxMkuSM5Xtvhc+RKBerYHoxJLP5ggGUpoV/CtPhew3
	 /QmXV+ZtIEs4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA521FC037D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695985368.4448.9598823979453907367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc9347e994573169b7744b7f6af6d29a469f527e31b0b88db90fbad619dbfd7
Date: Thu, 23 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776959853
