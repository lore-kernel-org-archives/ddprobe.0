Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472B41F92E
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741993734; cv=none; b=cRA/7UjeChn8kGBtZNL1Zm4IXu0ZruNlvmh42YoKnRZ/XFSM8dk1tdNZpJeyMUkpZvCXOlJvSCED6Eh//PBGxCCHoh6k3hhkWgu6Dry3agCJ9any+jpSLRzoDQFHFLko5yZTxcElfaFwOZlPi/uVXHsjUh+p15y2NZFzX+IFdWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741993734; c=relaxed/simple;
	bh=aOkj5anC4lW7KcwEJ+03exZNHsfAkhvnFd8a4iaol40=;
	h=To:Subject:From:Message-Id:Date; b=flsion/W4xyebYtEl+QmAkPgXBXc1JJGmROpst6DjGacyuKuw/fYl4euvpYJWd+JmNmU/FK3vjH7RThLAbkXBMYD5DOUEXtnKz97/yeZXWVkDFvqZj0fe3fb65IAinY5lJstZd8vhPJcIXCqoaykZgSu2cUGPekVQehxP4e1gR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfA6AKW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfA6AKW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7B4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741993733;
	bh=aOkj5anC4lW7KcwEJ+03exZNHsfAkhvnFd8a4iaol40=;
	h=To:Subject:From:Date:From;
	b=hfA6AKW3Tr/RZ5v+F6Dt3P6WDm4XWWIUf6tAHI/WeERgYfr/Ik43UvaUpB1UxuPg0
	 DwY2XHtl/GVb5esEX3FiGpWh84vPfMelOW7dCaycymnOQOoUPMYMIX4Zt2kDxDaQp1
	 LE5ZaEIoMHjoDnhoCVum3wiG0bSBIYJAiVCdXa9cg4FhJWq2IOwPZ0nnC5QJ7pm2Ar
	 2WIlZmIvA2spXaRFD6DEIgR3N3HjjmpyGrCZqLMsfp9pBUyMPkT1HiwV4mf1oAonE4
	 BC8ot2/j+G3t+xdpJMfsNMN6efnWcw+hnKd9DH7uZ+WQMaCwv8yrmfeniWWeTol9JU
	 mw/DlHT7OVwIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E453C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 23:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199373360.4536.5878603088707326223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0515a3bccc9a7eaa0a8225812fe8604fc9a615a6e9f4bd95b5f98d89be1a4445
Date: Fri, 14 Mar 2025 23:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741993733
