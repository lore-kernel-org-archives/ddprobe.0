Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E05835E1A1
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778958634; cv=none; b=VDGGo+AnyHEExz92jkEiLbPnyQil+PNQS88dnX3vuLhsv9qbdnglujpS3I1KNLMFpLgtztAmyLYPo1deIMqQWnLmV6RLXAke0ooHqDr9i3+emK1okBjHtHk4bn7ShD/Vl/e/3JUlyclHMwSmCJ1fvNvajr7fUMXFjN8FdTHWeZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778958634; c=relaxed/simple;
	bh=NzHyZlfy2zk4uOeXSTFnB0+Ba7MjWuVnoEu3OuaweGA=;
	h=To:Subject:From:Message-Id:Date; b=I0yyDelmA12Z1cNo+d+Iceuni6s/+pGuhQwQiwQtgfFR6Km4LVV/Dw/zmqYCSy7fFL2sj+cF0UCJ2VS6+zfH55Zo4qJzIu/nAW4j48MwDuM+tHQGUkqBfZtHmlawkleLiLhsXKVhhZ0RQvaHkB4r9xZI46G02pagDLankEt6wjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOI1+NE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOI1+NE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEA1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778958633;
	bh=NzHyZlfy2zk4uOeXSTFnB0+Ba7MjWuVnoEu3OuaweGA=;
	h=To:Subject:From:Date:From;
	b=jOI1+NE0WXxlrMdri5KZ2XWNH7L+pgtOl4X9BzyxxdkQXDOMf5yr6jPpqR/KQvLVK
	 lueC04kDziRBBjx51F7jh3a23KM206WDWZ63//pNP6PRFQbwVQzuoi4Sa7fRpLgp3u
	 oyUTG4BUThNwCvn3ApQcTceqGPRDoLPgOu+hFiNvDVMjpV9SCjwTvBE2Whz0EH5doH
	 UWyzNaG/EEzdW5ZQ5Kp6NwIEQkQEA3Y4MLh7yd2qanC9YzZG3hFkyzKR9kO8l3eSWD
	 M6jw0/GEZWQ6teF3WwB9FHOj8NIYaL077309/leV5q8cZqjunp3WvStBycVUr7wJXy
	 2JBTuxMX1k/wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7A6CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177895863370.20577.4975544194488597419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c82c7609e6089cc1a708acc9aa6dddf5bda5799c1bdddc95eddf1c9f158d959
Date: Sat, 16 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778958633
