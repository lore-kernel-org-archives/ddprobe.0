Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E154330B29
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777195054; cv=none; b=QHKncKEVumhmkIthoX1UQlfRBvMWCOmCdkiGT5rxqVFtPK0+Jv18BlL3O7Nv0LAllliUjrb1OXVBYfI1MY5oOAo8WA2JH1NVnKRuKXy155bC5LBGCHU1fiQvbBIlJAx1JMHi33Z2ZIVY0x0A/k+3NgVQO2h7Abz9pJ5LcUIOHaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777195054; c=relaxed/simple;
	bh=k0fx4w35ZE5OjYO22IqCMp2JDM3IRqj15TaaBdOCRLs=;
	h=To:Subject:From:Message-Id:Date; b=j+9FJGknxEbXI5/pD4cm6s/tk5F3g1Mp/DVbDzISctd0eE37pRxkAQH7FVy31hPdP9OUKwPek4qS3I6UKKLUCZu+1Ni1FCT2taITMByEa4Dq2LZ/ud3ekb6uH1tQ4L2PoJoqnVR5v/tTDtiBjbjqFdc6mQ1GDDv3/G7SYD+5UxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vfq3YUfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vfq3YUfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C340DC4AF09
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777195053;
	bh=k0fx4w35ZE5OjYO22IqCMp2JDM3IRqj15TaaBdOCRLs=;
	h=To:Subject:From:Date:From;
	b=Vfq3YUfZoxCLkz7jZErm39Z8jiSQ+wJL/xvy4kJcjf443SdT/l2cF0HUCch9Cyilp
	 5rjOR0uMS3512UWNn1gtXApMkqGggeDu6WQsgT0vBoqIGvHW+a7B/UhofUxKN7ZMzW
	 Dsl2YDeh9cBCRNGWexnSvqSydaQwPXOQhvyDgdlZ1Xx/NvqQZTYvjAuTR95dVv6v5Q
	 PT618CNcmXHrhSkoWulyBvmkUOMIOFuxTwD56ZmH9X6YMo0e+kXuRFgN3TrPtQ8t0N
	 h0jVh+/dfx1uy4cWxE3VXuDUzoj1yjGjFAbSbF3GMA5OJIDRI4Rx9Q1We8S8D6tTsR
	 Iwv1D2zGgKRpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA596FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719505368.2462.15387811937854819237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3180ecb7d70f8100623e3b643517c7c81b16601bf16651f9af2a8034db17fbd
Date: Sun, 26 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777195053
