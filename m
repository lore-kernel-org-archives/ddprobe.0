Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1230A23D281
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769630034; cv=none; b=TkZODr5i9C5LH7SmoTHXPkD7/+EUVyToTP0u8U4tBqR4eL8MOkG5m5OHY7ohedx85tW/Usxll3uXQXALICwnp/2VFlkIhoGsLTDMOUeMR037XMtoujY76vhlo3o0li380+Ti4a4Z7PdxGNmcb07cVf7TSVmtQNc+x50mXSQgmms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769630034; c=relaxed/simple;
	bh=0JsKsCENQ7mo1Ul+zwowvvllThtXPcwTNBuDGMzsY+c=;
	h=To:Subject:From:Message-Id:Date; b=tiD3lfWjlQxeVvYL1Zjy1N1vC17E2iXaBpm7jTYYhA16RBSqT2ijaA0Uz86FoBwhzhR6yjGWTWFa+qggYOXc7415lRO30JoR8TjOHJXu8uMplQXfJOSp/+QK3m/yPvUADm5JyRi3lVoERql0V3JUpCi3ysQ40hLU1cjzCGzKswQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyHOjNrK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyHOjNrK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769630033;
	bh=0JsKsCENQ7mo1Ul+zwowvvllThtXPcwTNBuDGMzsY+c=;
	h=To:Subject:From:Date:From;
	b=LyHOjNrK8xqxqCiyxUX27FqFGveA4+y4AsLh5MgjBOdaumUUcKi2EvLs6qRQNEf4r
	 MO7EmjJmEhSX5FbEVxltw/lItZdb9APCPRV+OaHt7IwA/shSUQ98VQUvDZlhpNV/pv
	 PQosSL41I/PzUdipybQhZr+Dqwjp1UNDZ2Of+vOtQu1KlFj7YG8EvqWdn2UGfOyE5Q
	 cD/gh4A/SSMCnSuRpXdh2NK7p2xJTNqBAHMeWjJaC4tkD6Tujb+muDMMwdxELLW6p4
	 OA4Uu8S9N2Rpu/ZCbkDpqp71QH61maVSCcQ4px7cOOML9PFUgCzmVBywwvueEtQ1Vu
	 E6FEY4ZddAKbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C8D46BF6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963003359.6945.7258359924629323226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3e371407a2fd02f982349f25248242c912521108895c3e0726a8158201353b
Date: Wed, 28 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769630033
