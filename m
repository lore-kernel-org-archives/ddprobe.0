Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B2585284
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713546623; cv=none; b=mdrelagSIh3eTnYZ1kraszVPvU1m07PCBgjrUtn7eLFZlpCXxSFungZGCxj6GHaDJzzEpWe6lyQO/cfSt26AK88xqfCt6mMT0E7pRD2RqkBLDBIUfzGPpS1sG8ERvyg+lFrB3c6IKUxaZFVRzcJ6C4b0mlGWP8f6qDvLLatPxUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713546623; c=relaxed/simple;
	bh=EuKfXo54jnh3fF624QiQXIGT9m9msv5g7UBQo75R9oE=;
	h=To:Subject:From:Message-Id:Date; b=g8OZ5nfENXp1Uu3JXIfqANjryjzB+N+HhQXp6bSS7J+YcQYH1EvZfJtaGdtwXXi4HkuISS5TA2K0HIAkOmyiHmiMFJ59W9s+sEy82iffH2rQ4bjdsprluQfZlxeKD4/c1C+Zy1H1QQJy5KHdSvSLWJRpVc7a2yZ8KDoPADf0BCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roQKW3bQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roQKW3bQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1C8C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713546622;
	bh=EuKfXo54jnh3fF624QiQXIGT9m9msv5g7UBQo75R9oE=;
	h=To:Subject:From:Date:From;
	b=roQKW3bQIP0+8qZwq0HLTGaLSFns25Wt+RJnHm8SgB+S5Yon0fKkf0hA4aNjCLlxa
	 V3XnElXttMHM+PRU85RAWkCnXR0NLPN/aYPa+VJ5zBcMoTPOgc0eOe/oIIsrjmTYF8
	 xOUFa1x7DEd4fgG1pjjI8SIhLUmMZbgQ7ct1HCpK+Pbnx0XuSKHWHbI2+dcXXRKOF3
	 Cpgu5IKdaGmwtnqOWEIHjXhaWffY9TeeQRRQJc50CPjbTUEWyrIGF2chXB3f0X0Tk7
	 fhuoOCwWY/oPsZHACSwqGJMSApcWy6XrcFsjex0V9zeaIVLeWHCgc1U3c98fgYhHMr
	 fMYSZikSkoGUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C70D4C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 17:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171354662280.30947.6483249819013556572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0d4c099f65f170da518443274a5f6ccb4ce389277eb056acd6172d869f6c43
Date: Fri, 19 Apr 2024 17:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713546622
