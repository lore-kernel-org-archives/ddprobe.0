Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9E04C97
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776330454; cv=none; b=UocY8b/tIA6j74xr9NTSj6KQqVFxk+1f+ww/5h/Lv8bNpmHMHjU9z6r74Nn3+ucJcarp5IcJ+NMgSj79qk7vt+563eAlCj0EhoIwpiEK4IXD4Ab8y2+r+nJTiwrdpoEX/6GWxn/ounCscy6kScj4I4L3khn3W+GStYUsXkpE9OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776330454; c=relaxed/simple;
	bh=PnV8rIxzAjqVyiX7oZVMQ58DtaibfJOAg5PUPAARaJw=;
	h=To:Subject:From:Message-Id:Date; b=LkZMGKxIapcD0U8vWG+Cg2GzXeFsv1Jf1HJMDgy/0AAQiSb+7zlHo9zBKd5WcVAu34J4tJilNUP+916fM9Dzszh+P+xVhzDBP3dXfLN9Jvhem/zGQw7eDjIuEtQ6DCQ/LWwG76PPjhXvIuz8c764ZGl9WkgMZvZLm7jncpwix6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJGD9TtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJGD9TtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F0EC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776330453;
	bh=PnV8rIxzAjqVyiX7oZVMQ58DtaibfJOAg5PUPAARaJw=;
	h=To:Subject:From:Date:From;
	b=OJGD9TtPSDuidxA0ar54p4UlOtlrGHfbV6JBUlipCfyVxXPv+cd6qKM86cn8LzT1c
	 Y9NEzW1UGKspopHBcavcoLresBTHMPjuulQrErIKukV/QppNxFZ6jWKi33Yfd5gP++
	 KSsBs2+mWaLV+klxgSuZfDP7xT/Y5HWKJ+ZMfC2IHgWV7eB6tZ2qtiJsG8Ywv5GbiO
	 +WXIjqnbD1CEoop8y6ZTmdo4HlekAB9Rlq54Lz30UFJEnrLIQabG4zHbk9WX4HA+LH
	 xW3u4bjeoZtqEo1n1DORWkDyhY9tef7epH0H7PG8rNaCvjZiiASvGcty3Qx38SM/kY
	 dDtJC5Qby8BwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA17AF8A146
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633045368.17173.11832873248593431115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e3613c472c7db8e288cc5dfe51cf76ac49d71f92a295695d9e77f2602b05a6
Date: Thu, 16 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776330453
