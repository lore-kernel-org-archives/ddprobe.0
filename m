Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500262C0287
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763012394; cv=none; b=BHGUUpMzhiL4jSvZ2lNJOQF6SoOJ4Zbez2swFeDOEh8gRsy9Ej1zQs1vPkwMl0W46mOO/3peJMR6cSS5nKMOXG4u5oOh9vlgH1h3hNWaFev5Z/MdMLXP3xAmZyTR/km9CROpOLQHKZqk5UMgKpATM7B/O6NxYfablkVvZzqWZzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763012394; c=relaxed/simple;
	bh=rjFqPeGCFIarlNLsgumTVsAcpxGuG6o+owNPPbqUgi8=;
	h=To:Subject:From:Message-Id:Date; b=Pmtfm1c7+lGV9QRlPO7WxYzVYN4bL59TdJWw//XGqkiMxThq8vLeYZQb1w82NVn37muKB7caLGfvJ/wmt5WpXBfavoKQKeY86toY4uLEUVHg/5dU6n453uFe5tn9UGntPnLJuPIK9k02rAiJo1uqGq5zzzPf8YMMAHmTSKQUPeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IX/pakys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IX/pakys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8F5C19422
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763012393;
	bh=rjFqPeGCFIarlNLsgumTVsAcpxGuG6o+owNPPbqUgi8=;
	h=To:Subject:From:Date:From;
	b=IX/pakys9NsFmFK5V0ynbPLR/XP1v+tILwMTn41M8mofQTOcNmTqXXeot4tvtFbbK
	 V7H+Dlx+aYCj7vkxrUu8L/Hg8J5y3w4mWBEovV+tWwgFvHk2IxNg1bKUB/1Pknx/bq
	 oHKXWBcUnm2Hh34BT8q7gRg5mAiHa/RlgYU5YFm+J2ChKO7DKi7R0lgUfOUoWzanJ2
	 OCcQvnoDbwPh3qD9BAhyjJkMH09T79iofgkUqis02hXFCg+TY/i0SZibDmcPpd3XXn
	 4PY+wrcJCz2k1lGhBaj4rQreyhwAXrwWxeY4+s1ZGOQXnMJiPfNhjb7sEEBJCskptQ
	 vHZkLv8b0sNoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A07CCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301239364.5266.6220977300556535322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a332546efcc404e384738546ce2a86bbdc367132b160086762705d1f91783e74
Date: Thu, 13 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763012393
