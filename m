Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D839182B7
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755435595; cv=none; b=WJwOvYx0IQFoe8nE3AmU0yEyduGdG8zT4pkMOaNMIhcgI7lW8HEjVWu74psIDMCZRAcGU3WQZqQpczPmMDYGHXV3C7ZPMGcDsXsGkg2j/sNbGFTZkIp0r72/3+tOjdqWO0REO6t7HBoTCr0HO7uIEyduGHYMHLM1FhBd8lY/EyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755435595; c=relaxed/simple;
	bh=E5KpcPxt0mcPFhxsC9T3EgBQutxE2qWaWnpo7MVTc3A=;
	h=To:Subject:From:Message-Id:Date; b=FAwPmLXbRpuEqwoZr2m2lNJCL1/4smPI7tzm8Psqj3Fsn3y2F3RRWqB425HU8Q+iVdeZ9sWy+MM9Dm2xLQE3ROaJKt8ZxHVdxYCSHGWBbg56lulU7mxbSyAz+FW/Mo0ZgkgXWwKuaAbEywfvZIAg224bg0YAg2PVvkpwa+4jFkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFtcU9mX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFtcU9mX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A71C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755435593;
	bh=E5KpcPxt0mcPFhxsC9T3EgBQutxE2qWaWnpo7MVTc3A=;
	h=To:Subject:From:Date:From;
	b=ZFtcU9mXGpfZBhAaUsOmzM8CI5neuc43RL/EcEExEeXqCkOng1oKnDWaSWCDQjCgw
	 FJCoyW2TPSdPHIKrvM5E/dMLWP7CI8vlZn1Q7eCa+7XtDd5+N6G91InrmOlQPV06++
	 m065KbXcM+0KBaykonh8TUFYerngu5YkyUcDRlbwYElOsR+1/JzdogFVMTmzrvKzcU
	 F9TttEsL7WFw2Zb8zAUL9rX56MkuB3XlsFaYWgcvxlBLhd5xUn7vDO9RdX60vvvDL7
	 Bnda38+jO4DQwVP01pA85g/Gz8yesaIUznxHvhCX8FG3+TgEjkZH9/jjQ6TB/ZCYDr
	 v+TkwlKzuHX+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A5CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543559357.32711.16342171210186391374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c4fb0553f201e0f02f58586384c3235f566700eb552e4de390f7b307771c86
Date: Sun, 17 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755435593
