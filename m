Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FBC6A33B
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762309194; cv=none; b=RW6mFx6+1XdUtAw+rYhwP8oF2Evco9ImFkBNkS/RUWztVFYUuQEArnEBAgoRuBIWsEc0w5ochpW5Okcc/xf0qRmS/qZk9Zdf0XgBTyowPr8eJ2oIjYx45RcQl+jVPXFwjNsmN8oBySFzhdNYOfNYhcUScHGhmmiJjXWjqD2t8bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762309194; c=relaxed/simple;
	bh=4agwk0iX3MxLod6iT8b15usenUQAjKWjuldwHZK7HPw=;
	h=To:Subject:From:Message-Id:Date; b=stm/V5MMVuMtgcQpiV3wk94OEt5gZXXE5MI3gy5f0QA9GJbekXTtn1FZy7ElLDwgL3MuBPtGn5xMcfQoz91MlEO0J/7ZNKEYluKFJ3qKQ4nNyQnK96DwomQmP1aMWdP7i1i5ZlMcO6bJROfnJsFszYz8FxruHbttf5P8Q1YnmYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icJ5SEPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icJ5SEPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A246FC116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762309193;
	bh=4agwk0iX3MxLod6iT8b15usenUQAjKWjuldwHZK7HPw=;
	h=To:Subject:From:Date:From;
	b=icJ5SEPls5NyEVXwCLk01Q9MFVwr4mGwf7Iij4H1T5CdP0pcfq9Vd8YxH4yMsp817
	 86KJBIGPmKT4oTixTvYNlD5HCCfTTQ4Owml6+TKLkf35hdPqV6gfNfZpyUmgWXJQne
	 z/Z0QPbtlNMALFGJgwGjhZ+Wab0s4XPjyqeQkh32IElQzlIi4nj6TC1fmxdil67QZd
	 uc6/EqDnw0/Gkr2RkjbNOwTFpQzhUveNdHb6dQG51WEU0Gd2tl5yE/V9tTHf7YOrZQ
	 rkdxTPxZHATIKJLPloZjBbszJIV03OhmOVJG+3KNSSHsWrzvW2DiN659Zkg0NnuwQ/
	 sJAbvadGSdCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950FECCF9E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230919357.31565.15062624555880234493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3479b35ba4d930471d50cb83543059cb93718dcc1d8257eb51921dd481d82b4f
Date: Wed, 05 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762309193
