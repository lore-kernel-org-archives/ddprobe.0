Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2638D7462
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729466754; cv=none; b=MFG86wI0Wp0jCAvavZGVlzxO4ujnn/HKvi1oKo7xr3+MyAdafNA+bn03LLROLbRxVomoklYTSHma4dtsDuzFs/XdC7SZ2fM+m7oTbPa0Yb5X2AOkZMY3efnMrKnH7kAjTaMHSMQpmBcf+vx2lUlfAmtaYBSQcuhVhVRtniLPmSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729466754; c=relaxed/simple;
	bh=qxC9Xavbe6p9mZoUAWCaqxutsDQvVgIqpREpEy7ECnQ=;
	h=To:Subject:From:Message-Id:Date; b=cLUwm+dgY4V/Jx9/xKGchXIgtPPZXO8Fw2hS7SVwBjBeA/RVTG85U/QJm7Wwj/1pKvETh7E9tP7jnbcBN+Oru4HEb5m+UDvvQefAJjEzi7+QPgrbtla2lSCOImGj1DAYCI90K+JHpH/v2NxJM4Kjl2WUZ6zaK9R8rw2S5z9b1io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYHByV8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYHByV8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1915C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729466753;
	bh=qxC9Xavbe6p9mZoUAWCaqxutsDQvVgIqpREpEy7ECnQ=;
	h=To:Subject:From:Date:From;
	b=pYHByV8B3YfdWCQp0uMN0xLOFYmRGyTQ2T6UmGChynfXAG2wpHd9aTBp2rTDhQCnO
	 Ev93BEqFHmVWKWkK/DLMV1wwuesmsqKW2AzQO6jOdhKls3QU7NHuO51yvl4S+pJFGB
	 +j1CyjAfWZYlIFzzLgQqW6JWB5HHNekRMNWlFv8LqkQQzuLXn7IbwzOQ3lkzL35ZS9
	 p7k3JsYrkkU8pVNah8/zd1hm+1enYDQn/P3UXLtl/G5Yx4mryoxrN5dmJa5UrLMXD9
	 Q8LgHSdtfpSkx7+oUQTXW9qeSLW13eML6wqAwgpPCA3JnNetdwcC70YAb7YaGytsAt
	 E3c+GR3FWofnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8BAD3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172946675360.6585.14830938847925764757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f89577a2c4440274c3631dbb355d563bdd9c578edcf9222bdbfa64528645db
Date: Sun, 20 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729466753
