Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A5E55C35
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711228697; cv=none; b=VCTYdhWg+04oOKsPB5Gigv6L2oBtDSwra/bugw07zNNtkaNZJIO3tS1cnqvqNdsDjenNc03cLOq+GjdOiMTDJ42LSlioTfQMPOmgUQNGiaAww8BqNJrbbSvZH7R3aMrfzKFli1iCVoyhNNd5nXsqxludXaRE8eXpoF3jZXZGAP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711228697; c=relaxed/simple;
	bh=J6UYilP3zJlsOwM6e2d7lS0vItgOa+fj6JRa0cXh9jI=;
	h=To:Subject:From:Message-Id:Date; b=Bhxt0nGOyHX0Eqkz7BGdnrrsLwQ+kGKW2fKFN3nVz93pvNgxim+l+xuBYXPn1R5v7p6AXBgd7eRqeHT5WyXNfq5YFC2DMWg6t/3grMsLIwKtIBus9jClz+2XOUpj+yUI9LkQI/n4gxbrIJ6XOUGGU9VrQSg5PW/zrgPCUE+poGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkYg8aKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkYg8aKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 866D3C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711228696;
	bh=J6UYilP3zJlsOwM6e2d7lS0vItgOa+fj6JRa0cXh9jI=;
	h=To:Subject:From:Date:From;
	b=NkYg8aKQ/yx48G3Kt+Ctq5A59s9uQFv5eK/kFsMH2xSptL+jPTMM6zerv1MdXgBZl
	 TOfBLskhASEiyOA4buZZI6IE4z/EDu/65LkZbu2+s5JbmvyOB8oo5dS2JgVnKchOPf
	 vCT8QHOcVqesrYQQmysrOgUxNSPRsPG58NyDiLZRiA/xdOY1H2TcGUXhRnXTfCoOJC
	 LpCtPHHOrMGLrpgWA0lghbZvlwYntD5PQF0WwT3xS21WIDLYCWg9D+99wGaIfrZ+re
	 2EENHJgTk7Yr9+6w6xSkPcDn5PlA3wk3KuPdYxizCdIqipRCFl6FNInKnxBrqvq0Jl
	 6ST4D58H6tHhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FFD7C54E67
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171122869640.13469.13932165651592341866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24155ef2ac9002899345382747724291147dd005770f5da163ce34a275aa828
Date: Sat, 23 Mar 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711228696
