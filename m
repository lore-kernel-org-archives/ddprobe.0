Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0324A38CFE7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774983894; cv=none; b=ooYtdoEHjLz8QNZyKMk32Fhh68l8z0Z8QAIqzRxzEhwYowSkA5vBwTEYqBIQ0s9CapNR6gytvPx+oiq+LtTo9372R7yBtiPG+BlofTBTWnkThcxIZ/7upuPjPezAhmJszkMdbuDIwpy1ObX56d4tuhnFfIjlDQG/2AdC2v8nhLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774983894; c=relaxed/simple;
	bh=RAyGiKVgENuFTXWy7dqfIa9gx16fuIRD36cn9FaDSwo=;
	h=To:Subject:From:Message-Id:Date; b=MQVCV0uWxDs0IBxnQMgSL/YMtVAGfuKeaJujHqWrhMeVMehWEXx7FHDgEmQNuIHXi7G+ILdSs0+M9i7Z8MjVs0ra38tZn4YKezbR8OZp0OaCedLFegD2x/sEcdM088rB9HwUl9e5xwjtMPWyBX7JCIYFHRDQ0RuU+H1S+mio2q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bh7N06F3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bh7N06F3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A881BC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774983893;
	bh=RAyGiKVgENuFTXWy7dqfIa9gx16fuIRD36cn9FaDSwo=;
	h=To:Subject:From:Date:From;
	b=bh7N06F3Cl/ZxMwkBjdRkwuXm5JIyhCXlIdR8q9WtZ9uq9pQWHDuUqs3DiD2pl0/1
	 C09AfBh3Di/pMQWHFpGq+6YCLjdFbESojUUFyOg5vgDKvyu9E3EVgZ5jWgquX8rk4y
	 X+HKgrUxVoc2/IPzagkaGsRB4jqU9mWbIMI2w6+IFr+DKI5XmKD4DFbd9HkeSoJjb9
	 g26Z5yqgmH0shwN0BeQDDDTLiJZQJqaPqLDKy1HhTRe9DFiBd4HJGhoSoz1DgRKFhZ
	 6M1EGGuchhYf8GbexqsNhyKCX8lViyCWSjQrBIAVZE3XcYFdRkZGf3gy6FMELCeOBT
	 dkSvfaH0d3lMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A8310F92EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498389360.19754.11642442998378812708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564fdf926da38ce95c4319376e154fff01259bd0707ad2ba336c3b1c97a32dbc
Date: Tue, 31 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774983893
