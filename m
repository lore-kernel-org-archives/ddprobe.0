Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4871C7019
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743104393; cv=none; b=dv326lYqvnsVuj48ucF7/n7P8yP0RrNQhn/jSjKzgOsHkLS1anunjBaY7CEE94DyPKTMdounA0/maQ5rjQyyg8I534ooOMWcr6LwufHnrYhjX5aNSB8mxUJOpeRQbpZ6F4V/1L5TMUpej/BVL9FVtjH0WRSBQmBZmKeY6XUAX/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743104393; c=relaxed/simple;
	bh=9H91Lxme+Bg05ygRkPOKD4RqGDDqYgpvqoRaUQf9RIk=;
	h=To:Subject:From:Message-Id:Date; b=KmqXULiYXUEtkruEpfyz4BO9FLFAxYwNmDUCBCNuEIpBD+Q2eqIaOa0cJnBHbiO+BbFzeRqlauUwhIYrGfML0GhsPm/Eg0Bzr9JX7Vrk+qLzKtV2cDgg/xiwzA7T4uPSRvyMXEFQjiJdTJSdjrlooVQ6xOaPtzL19ZrA7F/L7iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfB83PvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfB83PvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF419C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743104393;
	bh=9H91Lxme+Bg05ygRkPOKD4RqGDDqYgpvqoRaUQf9RIk=;
	h=To:Subject:From:Date:From;
	b=nfB83PvSxdcbD1Qg9sJqiJyqN+aA8pXRNGR8+2jXodJ/F3soEtfJP9LZZE3iBDhoE
	 JF7mWXpNhh9H8OzXSIzg7/5QjPNs50JnV2VaFL8K5PnyaEvRtYSg6A98Gvqh526YR3
	 io4savAPaTmJyhqZ17U1rA4ZhRCwGh0rVKrf/NHUp3nD8iWKVfSsYsqT3E6seTNvqq
	 D+qBOHahqySwNRldu6wRncyVFfKTzVM57Aap82PrD0Yx2Bp8UFvt2jwrQZocuTtDr6
	 WPbLOoRXRhCnfrxq4TArR5jhBogOyCKLTZvF+FF0GWNPJ7UHoEouDskbdwnvNWzdaK
	 qh1hT+Q3a5SaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CC2C36013
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310439361.31584.945097618964894195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e2be9415e7c1245628376cedecc325ec7238d82466682c041d4d85967acbd4
Date: Thu, 27 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743104393
