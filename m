Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF3751016
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732470954; cv=none; b=luvnh6X+x+6EJJ4ihDO7N3W2OceyzRNB3kJ2WcWZ/y9auOK7eyqi/ytBNmXQw4HzuuEwrI1rWpv/BcHj9mgki8PintSqxtvP5BmdpljC2PeBgi8Z2Om1dASBXCWBys+M2na55LmPZUF5+WnAFO4lO28BmXXfVpxUe7iGhc97EaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732470954; c=relaxed/simple;
	bh=evvxAjAJQH8mj5wUqLgIpjNQ5lcAH2q4xFvnkTZv+9g=;
	h=To:Subject:From:Message-Id:Date; b=SR8wjf7elu7uRW+gEtf8vlW/r9Qe54sCT1G7GZgv4WZnEjtuU9LcFVw6WILtvwBmFPdOD5P6oqvQRX3Jr8ZHzWSTf09MaoJqbKKcPsNLPKz3zLEad2PJNdlKQA8yo11ZZzTvEX7V2SlIpXwva/d7+/PHd2F5mVarIQgjUAaEe48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jf6sC95A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jf6sC95A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC553C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732470953;
	bh=evvxAjAJQH8mj5wUqLgIpjNQ5lcAH2q4xFvnkTZv+9g=;
	h=To:Subject:From:Date:From;
	b=Jf6sC95AI87bwn2tvDIh6N360oaOwH4rnl0c7hk2yiSb0aKiCp7NQhC2oLc0Fq7m3
	 Ce7F/vc6MeM7W12m8Lm9scQBacM2souG3gT33efIYdkVVw7ZvK6ZvjXzO2pEtQvFOh
	 akHwmiyQV49lgCoDZ/4qhs1DmSZLk+y+CTZtyyJmRlQsHmbYobC9Y1aqJx6SmP9RVb
	 bfPd1+F9amJiLKnkGo+DiSNMDN+nNANVK6GVzsk/RnsgPY3O4XGlCTQqlrFVZv1fH3
	 CmIHriG5aWcMpHmri8WvIWaHQjpYqM9MCJCAATVLDrYNglTsJZGGEOhqInjHtoK6sG
	 oOpNq4F6OniEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C313D68BFE
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173247095362.20002.15340937110888813576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15babbdf2e7a4ff49db2912eb9694163664f37784d2808e3572ac73525721ae9
Date: Sun, 24 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732470953
