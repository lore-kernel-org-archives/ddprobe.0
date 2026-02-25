Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F282DCF55
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772018693; cv=none; b=tR/iQwCbJS+UhVy+IuQ0t8hhoCXlDomue3FlBdt/vvNptpkzdZ/qgiLZLv2qNlo+K4RL+e5Xtpie7UVGl6U59OJfl5n92eVep6lbMDkFlL7cUC4cNhnxygHwNkYEkKmYrK2kWEw34GUugkkfmldfi9us3FFyaw6f+novvytKJlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772018693; c=relaxed/simple;
	bh=rGwcEaawsuhzN3BPfSmYLs/mgLMTZHBbKV85c/tYBaQ=;
	h=To:Subject:From:Message-Id:Date; b=jN3hIMkqkWqtdFg5P251krg9EHMGnW0Yvubpc+0efEBT8x00JRvPI9Bd7rlSQAHAts9ah4h3VzxvAMfUORkEzZrhrXSYSw9J97wNiL8DVRCFNiSgY93uCH3H3Soyn5vPUzhqoYoG18LdV4/qb0sTs2ar+OEFQ55SWxN+RmWrEc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nB+N0DYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nB+N0DYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4806C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772018693;
	bh=rGwcEaawsuhzN3BPfSmYLs/mgLMTZHBbKV85c/tYBaQ=;
	h=To:Subject:From:Date:From;
	b=nB+N0DYxcs2Q6V0ijpDsVw6a3fEMke0EgD2Fsvp9RD5Vk5HU2LrUqgLAOLwBxvd3/
	 by3g5jZ+nzFmHJQ6Ki6IVfCgPulhnUIPCil2OOQBbk37IrBkuLGeQ5siKk58+y90Un
	 bHSYGKQFElCCvfKNeXGesDt/kyU8OrU9k1zB7h47VIxWVZpVB0HFlGDx4aYtzXrrZa
	 p8r4C/pFk2f2+BFewW313R6cUzLl7DjJahnSRnC+ALSQJFpP8i4sGGHpN0FLmLUL2S
	 tpJ7XGWOVqQgod8JerJXYcy1B6Vnq942MrUCL//bkSCy0i+iyef9U5/ooazKIBluVO
	 LZytY8p3F2OlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C4DFCEE86
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201869359.15624.6639702365733837140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5726caa39ef8bc511a8a9710599d793494fe9e4e59589889c0d5bd899a5d6545
Date: Wed, 25 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772018693
