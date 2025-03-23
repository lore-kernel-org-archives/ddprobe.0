Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BAB1957E4
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742771394; cv=none; b=pVss7udfukX8nJ0j38YU4gTq1A3CnB3u4JblEf84ZOFDaMdYOWwastSNgHT+UvwJnkRPOJTi/8TlxMb7kYs0rOR1Gguf2T2f/OVNS0tsIAOPZK/64DAAQUcim4schd0BL0NsOhIDymAp9oyyQVcCjGGI9O6wRPz+BZasua4dVzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742771394; c=relaxed/simple;
	bh=YkPDW3d8+y+Dca/84YaRrkH3hdJVSa0khOn+aNCOQqE=;
	h=To:Subject:From:Message-Id:Date; b=gCpaWCvu+BDQ9q6YdH/QGiZO7gS3l6Qy8CJEpkX9WVFxdQ4rEVEUOnE1b0/mtur9yTKz0TOiWKFfqJf5PrG/+PEfdyN5/2kSQykrqaCBPe7nGhxnv2coL9r0BOrshkYeybMfqhn8MuaBUVJG+StyNIy+8bGY9S+5FDomwsJY2jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOnRrmzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOnRrmzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD85EC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742771393;
	bh=YkPDW3d8+y+Dca/84YaRrkH3hdJVSa0khOn+aNCOQqE=;
	h=To:Subject:From:Date:From;
	b=WOnRrmzfL+mofhXsQb05bQyJ21e0eIOHsyh/vNuU6d/Ip4mNxvnSZtG+gmeaYLvCD
	 /470bV5PQ/he52DBoNt1Y+iOdSAw4AP4Vr2EX85XQn+sFrmVMOuIfo1nE8Bur8vix+
	 XShKtlDd2TJS/QWhWB6Ub4flRpWh1Fw2ZbIgMUWHELl0QGAdnTDz74lm1xd6U6gG/N
	 CxKpITKvwi8/IoGiDZXlEBcoUcAgpndiVqqtZYDx6meCTmwLGSsSEVDLFZNT3eEoNt
	 IgqJ18l8eL3PEESd8mQRUugo7Z0j3FO9go8ZwPTXwNM1CSlF2jG90O7hVH2tEL9mn9
	 T9jaTX6Omm4gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913DAC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277139358.8308.10140397023805587936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb28b851b01128097022ad9bf96febc81ccb6ed5293d738f87916d559496ca5
Date: Sun, 23 Mar 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742771393
