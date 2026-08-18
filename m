Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254E4442B12
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787062234; cv=none; b=TFYfNla4DG+YMhW21f8PKynb4vTR3faa3LdnWMTYV5McXzFIqkGKg4Eb5F/Fmw54H5RSJU4Brn/mm51gRCFf8cxpmc+E45FVr7itF52G+9yZHCciu5Zuc0EbIxYZlsTq5AmzWAG6lKSyy4Pw9tjEXta4fLLqRNl7AovL/i+uflg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787062234; c=relaxed/simple;
	bh=vo1R9X8r7Qt3zPaK5TCo3p4n9zkbr39YD3Gw0W2Rk04=;
	h=To:Subject:From:Message-Id:Date; b=AvfNe/LaEXpheH/wHSctFyLXMZQ8ZK3qtWrnfDjxNuxK/cHNflSvsZDcOppa5I5OFEhEi/7l1/DWefd7qGzrz/KuAguGyFvXbXGgaJjwVMs4wo+4hw8PrPBpscikcEUc1xFzuNHnNNtoiVgABBqmTN21+7J/9hrrkrgTixm+4yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pn02UvjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pn02UvjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFD9C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787062233;
	bh=vo1R9X8r7Qt3zPaK5TCo3p4n9zkbr39YD3Gw0W2Rk04=;
	h=To:Subject:From:Date:From;
	b=pn02UvjPC7XwHQcWBxuxmIoGdcd1SXNdDtvq7G9O8RAFwFm7O6KFqbSEvcQjMf6dX
	 igrmkTviYJTnSdDbnsXDzCNBveGMAMeS82+TOfYRpzIoHyAlj/j7kAkGe4X/FJEQPc
	 nvP1uACcNuKP7pyCBDgArwFwZT5o7OT9xoT86HCyJ7MELq8Uw70OvrJ3knTl3lnfOj
	 434bNXstCNEywYnvrat0LVh7UcO/0s7aqmEkvuJnzbBRo2zHhwlrFaj6ZijMuyVDt9
	 iKxPfNVYRdTfsAOdq8C6Z2TihX1q48BUA+6EZNbtPwjNxSzwZuXLtYbD3oLOk9VFbL
	 rSsnXV6wWmKbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8DEC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706223368.25235.3286094255750876313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0fab3743ae2dd7c3223f3fa9843ee0c18113dcfb2ee9c43a1fc49740e6e505
Date: Tue, 18 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787062233
