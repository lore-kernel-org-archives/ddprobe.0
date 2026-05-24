Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C11C222580
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779594154; cv=none; b=ccjvcfUtXcCXl/xclkF+L9UI4FWqyOD8xMziWbkKzHhqk48K5AfHOhy1Thl4NrLuGGESQqbiUD6JfLOXDaU8/yXchDyEE17RGrDKNW2ojBAb+Fei3jRTJsok7LL2EHoqLYpSO9pJcf86mh1SjQ9fiCDR/rWD0vsVO5DKc5mD6WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779594154; c=relaxed/simple;
	bh=wSE9A8S0DYOCSentNXc2raEK8da9ia1KlpeFBqvnTlM=;
	h=To:Subject:From:Message-Id:Date; b=g91Moj8Ab9FUS4jdPAVZk+m4M+5RsshsorgXnkjvWV8DME/nY+Nu/tGt2aSxDYIBz4NdYIx04/Sp3jRAPeYPiaddaJnGK4TSuqwrffme7bgDtpfPL4wHN2PJgOzWZ2kp0AN+ddkQsONwVEm7FUXDcWRNmhtmGHGqOMQmvdt4xbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Io0rde6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Io0rde6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02B4C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779594153;
	bh=wSE9A8S0DYOCSentNXc2raEK8da9ia1KlpeFBqvnTlM=;
	h=To:Subject:From:Date:From;
	b=Io0rde6KejpdV1tkaREheDuI+oiPPTLttrOL15Hc4n4J2wBoVH7m/CBtwTJoG94KV
	 TbtlVNa1twrkCQhYiTUgwO0thDcKQCDq1+8I7wG2s/2bnnCCvPWhHOwJHy2VmY/0Yg
	 wgv7gbQpGgvQi6qbxY/et8HPFPqtGRDyXIEDMJ+J+ycqv1DOpMKPZvn5zzm2PipOVG
	 8LI49+2W60yGurg8mvS0WRzl1cL1CEw1d97JzcEG7cRneuyQI5q3O1gH0eZlrYN866
	 DwPvjLdV3XgQCo59R0kFYfirQd3u+iYadBU4ZHQyp4UcF/OOAZZv8mwu8zCwzIKbe1
	 SoTZSOuSG7dug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A888DCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959415368.25099.11712944248830300906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f896958b7878facfaba529f6d4d919b8159fe579c6ae724011dcc38d03f55500
Date: Sun, 24 May 2026 03:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779594153
