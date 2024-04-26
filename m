Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CA113BC2B
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714116743; cv=none; b=DFeayUU7hTx3UYAkBFi60m/oG7C2mZ9kPFvzqorTsh+1qTfH7K6KyckMWYL6/HxFl+MY8lKft0Mto1395l2/8kj9FPRkxhtfPGvTWL97BF7Y1xhXzuo9qmDLioztb9Smw/VDqMgjskXDz/9ejPRyFHAl18sCfZRzYZy7qAvjfA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714116743; c=relaxed/simple;
	bh=dxja/YPn9GpN2y39MoUC1mY0bYs6qWmU9yCdZlJoX9I=;
	h=To:Subject:From:Message-Id:Date; b=lqAqAEvvPoC/pu/VwLrJdwBUx9Gri2knfv3pmf27N7Bf1phV9mw+7OQ3gP8z09u9/X9KPZcydTYOgHV+1vXUh8got+HN6ZO+QAPAiWshuRjB0hQzo7lXKn2HTykjk9fbPQ609fS+1xjb8KkUpHvOMYXdTDxKOg9+NBUADUZJkgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRwUXWUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRwUXWUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDCBC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714116742;
	bh=dxja/YPn9GpN2y39MoUC1mY0bYs6qWmU9yCdZlJoX9I=;
	h=To:Subject:From:Date:From;
	b=aRwUXWUrjWPm9C9N7fOdhIz1SZJhX1/jNng58DMg1OBL7fvXgPXdQgtE/TRf50fNb
	 NECxrRuLHrote3NeSXouY6E+G+qbPxcnB0doxJDSCZWqSB185sHX9IFuCRAze63Q+q
	 nqgRyReEmHQIiKSH7YO1N9yC3AD66cWsXDmAtexbeqn1n5oDHX+J8b2xJThsn630nz
	 OuRc29VsI747Z3VXET7UmyddWvlfwk0pJRUq0ME9OM/UhVOY44hT8rnL5KmuTYihI8
	 ABp3rzpWKESfWU9Ad/fAeW+6hUwToWm0oisuDOazsBda1ANoHmul4CezcfqPOYXSU2
	 uXBk9FtzspmOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CAEC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411674281.27689.6827205617458344854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a774ee8a23a2200322cc5097e8660fed9168bebfa5c9fdff7229d96c0365777c
Date: Fri, 26 Apr 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714116742
