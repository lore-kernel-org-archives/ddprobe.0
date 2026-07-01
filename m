Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB82255F52
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782931714; cv=none; b=h+RIaX4cmF9DlxGG1sav+5gRCkbeM3coOy66dqVhbNpv/yoTxLbcsFjTkqcNYqJtCdPzL2PZxffrD/F6zxlZNFAy8KwaYaKc+yqaxc33THERMjtmHtuOWP6wehAmnk73s1lgxwBxE9L0PsK9o6zCQGylQSOGWXMG9C4/dmxP1Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782931714; c=relaxed/simple;
	bh=krXirqRa7XkEnKSMPp6dMhc3ZtB/eECfV6HmGFidhzU=;
	h=To:Subject:From:Message-Id:Date; b=Du19UaxwkLiYXqV0UZ+x7qmVByoeKAtKy3ppPxUOXrh421Xm4q7BwdIi9Hww2vGxUVVIqSpRqw1bQ4bnSjX3feaXQUHXJck9S53xmn93Znm1NmA+HCa+b0zciZzfSllmrXLuRkhYOGS4OcnNYHc9yjY+xCWjX51jkuCu3IXy9z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2p1OTt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2p1OTt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15AFC2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782931713;
	bh=krXirqRa7XkEnKSMPp6dMhc3ZtB/eECfV6HmGFidhzU=;
	h=To:Subject:From:Date:From;
	b=u2p1OTt4/Emdkdfx+GYw8yHP/znOWzwNateGiZHOYqlV0vM11eP5+SCdw6CNJvfvV
	 yCqIiPVkFjvVMlEqCbshGLEkBY1xVG15zGwofWJMr1qkueD1SDYpnpMCcL6OBoeR34
	 prmHf+UEqHNQQVKFXmjUgKF3crQuQOON1qMYSmVWBOR4TU1O/fYZl3mbiN771qQbts
	 yXSgJZyLb0HzC81IElgL+Zkwku1uw3/lNt/JGBzh0AXoZcF2BzYDybZRL4f51wPEEC
	 R40mT2hofWzIaAn+jhko25/kgErg0tQueSQb/6Dt4TAj2NS+dTTgfeXjnYcZG+LKYA
	 JPfYdat8q63/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2AC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293171368.30816.10754462775186542452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9700d3d72caf64fd9e558df3fa87ac8e25ee314a608211301f27e152b8451e
Date: Wed, 01 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782931713
