Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4A0331ED7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781991394; cv=none; b=Nuar0HDEE34dYNUZvlACsGxTwU3qNABzXtTWsT5dr7POH27oBse+VXRDn+N3bxRUWxMjKUZoN7+J8FEvZNLaN/bz0ue0p4gFIV1RKiEZDH/VDCe2VAPd7uGpdUGnH0UYSCllS4JYuQhR7MY/pg/GPFU4PMejXhbrPsNs5Kb5Xog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781991394; c=relaxed/simple;
	bh=vpg+DWm3oCHa5hEXtpqP/lTmCXr0SQa9dmP5iUCsPDc=;
	h=To:Subject:From:Message-Id:Date; b=bHMcDrDiJ09I0IwuwNnZ9gCNmEutMLNGOdK0rSq76nWOfx2TqXtEGvVgjxFPC5tcxZkcAolSDyk+yb19oMwh/t+FHJ4B1dDOhns3neQgRlEoM6TNWM0q94iN7joq2Vle0x1r/9SL035CBqxObuXbQNehJDwdjzWX2LXbM41IG0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pbq1MfhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pbq1MfhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB857C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781991393;
	bh=vpg+DWm3oCHa5hEXtpqP/lTmCXr0SQa9dmP5iUCsPDc=;
	h=To:Subject:From:Date:From;
	b=Pbq1MfhDXP2LSpfsY/OcusEYwmu313wVqo9JCes6g+YPmWvfJMHymm7xwDfrNBS9o
	 HmQoBRFv+QybfRYlzRasfkOCI4bZ+D2jLvhhsUnwibWbqWf7KM410fHxL9E56aMgp0
	 JNAtieibHkcGPB8VD0NyjpgPRll6CHRkl+den0xO/3uLgVc1Toh9Fv90EMw8HPEAgi
	 6/3rrN5dGP/3SrEfNaiZ714T2HIgTifmrGoXMjxSVYuCCmw+kX7iAd8YagAjHI4RJG
	 FIigixfqDgt2c/1B3g36wwqeTROSVyovHSZWJTq2IOHjnQe+VNwoEpLPF0JwoMFzqP
	 EKbR9rIpH/dFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18FFCD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199139368.21769.16076082318955689924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5b86ed8c3ea17159ce5c6edf72d4ec9ba11e70152a13116b924ce71d32099c
Date: Sat, 20 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781991393
