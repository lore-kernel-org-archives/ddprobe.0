Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE0528EC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724983554; cv=none; b=e1+RhYCSr8jrPnV4aNYCuTfxFh9rY+sKjavOW1HYs2tvEctBhfgCSRrKXN3Np3CIa5yCbxfr4Da1kpP/nRBgfdDhY4bgMV9GNQbV2XoEAWSTBdHFQ9QJAWjhhxDMlP1Dr4auy9FPmeY1VoOW5xPfbzHGu+yw7kJrRfusTCNxRzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724983554; c=relaxed/simple;
	bh=0Y+Sxhx24QyYqjQ9MXbnhl9NTuw06MraCCDFA+9RZQQ=;
	h=To:Subject:From:Message-Id:Date; b=DkdRklFN4/M5QvLr4SFQQW+J30SsaTGvrGUSOZIc9LyhWYWAQDBtfaWKdJDoe2iSEqT2+5oO56qnx3HZ3jOsNmgsYo+L5Xyt+xV8Yo6YwIxHPKpVAAl0SM7JNQB9A42h1YVglC0MgPR6brCDFdDdXLDLQCnEPODdpGS331fF0e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lU0HizJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lU0HizJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D52C4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724983553;
	bh=0Y+Sxhx24QyYqjQ9MXbnhl9NTuw06MraCCDFA+9RZQQ=;
	h=To:Subject:From:Date:From;
	b=lU0HizJEwsXw8NeTWokTI/tjXGWUhI48CXfvdLwSkBSjF7xkOFjNCyZ/NYZJilNz5
	 V9enQWYSw3YGx4EzRR36JRBxDcvv+l6rLDaj0iLqPq1Q7UEMAgSiD8TbF+DxiCOrdw
	 oaVJ9ciSdMXNt/Lpj0j2EvzbRTcANJff6/zDErHJObOoZzH0B1iApMKaFCRSZ288Ho
	 7eZB3WyBhXJKV/lKvtdoIrHTeAtqityXifmctaXjEztyz3JD57meiiXCZzhSZYdM0C
	 WZWPdZR3/hhoJD4rql4YbFBESc9oiFkDpo81adNL1JrSMSFQQl0C2Mk5cMzUvsaV+A
	 fCAbPuiI17n2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945FFCA0ED0
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172498355360.9079.18174089475910239279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9e8306767e56686b468206ce69eff57baa408f130e004a14c6a74eab753672
Date: Fri, 30 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724983553
