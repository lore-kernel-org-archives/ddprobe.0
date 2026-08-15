Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEB313777E
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786825234; cv=none; b=ajmqEoNx/WF10bxesuVvQs2IUrOAF61VndVs9m/RheHyQnkVGeAMjWmXA0+U1QAp7g7+EgJeZsqK8CsHcs7MHnUptkoX59fBN7ahAtViccw/1Sc5XsXsQekTpAFDX2McDQGMCY+eOSZJJQ9mshUTdTyMU89lvlHvQPfvqz+WR1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786825234; c=relaxed/simple;
	bh=d82QgVaV9GhYPUbf54QXHSfmDZPG6zOGUtNUT+m1rpg=;
	h=To:Subject:From:Message-Id:Date; b=ku8+ViGZrAqCW+XWb3/I4mDEMD+gP9MBrBkqqv7s2cYwubJnM16nP7CNpgM4yikDjq+Z7wfqQhzw+J+UBwD8YuYEpNdnupQQM7Ak+A4M7dwlZnindubGRuFD2rUom9gdCTRfSkiDDgppd6ezUUvCTZ6H2m/QPEv+rPptwVKxk2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIWYDqNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIWYDqNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2EAC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786825233;
	bh=d82QgVaV9GhYPUbf54QXHSfmDZPG6zOGUtNUT+m1rpg=;
	h=To:Subject:From:Date:From;
	b=mIWYDqNCxUg14dUmOQmDcHYhYPCTzqmwAOMLvXrr8u4Ioi5TwqQc+OBZID3KQAkuc
	 eLpw9Nef6efb++jliLfdsilnO2FiO5nHMeTlqJdQ5ci1bRDxobuha1IgZwvGzRE6rm
	 e4IWckCWPJIyxSGz+8vkHE+/H8TpdnGlRvphJl2yrQHuJKR32ZvOEWqo61WDJMxMcA
	 z2GrPoogktYavbDjalJ+KWnT5m+7Hfp/3Xcdknwy5b5ojf1p/2HrI2Mx3FEa9O58ll
	 OU7JOU8JHBuenqieXZO+sYUpJezfOw4ZLuXdEblql3Cr4a4FQtnOmpMBS5zK1l+Zs9
	 9F1yj7HMAOpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF43CC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682523369.12684.7470055289873308464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9393d07fe00d50e58615a0a951f322887142cf90329cb9aebaeefe29ca609a
Date: Sat, 15 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786825233
