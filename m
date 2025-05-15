Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3538618FC91
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747322394; cv=none; b=nLlHp0aCTsMr+w/+ld9sk+nIv2gAenutUGDoR1ZfA6IZGuZniLS/GGzaocqkClPeULwkufk7cU+qZ4AJVjh5y1QgT6tD4tJ1Pj2AkY6aMliSe1j6RNUYH2ubt6EXIBoXGUxgkztqb5f/Mo99ytxNTLZkdgP/VzSOtMu09HhEfrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747322394; c=relaxed/simple;
	bh=v1+vLAJf7ZBM9gWjdamie/yVkj4FpdF8Oz2sogHJ5Z4=;
	h=To:Subject:From:Message-Id:Date; b=qA7qWuNCAN3SGAl6qQM6lwZ5Y78Lm5u3J+rCrDGAEd+bOVZyo8x4RXnF3SERuTBvItKZ7wYbO3L7kn5rdnbmLQnx8fXRbGQArLjDziafB2ou5/6GDmIBiZIeEfVnEhcmwlLQ6wfuL3S1BZ9ERnEaNhX+C4VNdE1BdqtpGtMzH/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSvGKKdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSvGKKdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDC6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747322393;
	bh=v1+vLAJf7ZBM9gWjdamie/yVkj4FpdF8Oz2sogHJ5Z4=;
	h=To:Subject:From:Date:From;
	b=bSvGKKdZFWV3tSemE8f3jGGJjBKdT/4PkrJ9Y8WMsb/V83gcb5l5po/rUSdrweQT+
	 mGQZEtG8A3o1JFyenatEVjSp3ICdS1Ow6/M07Pd3j0zv02NFIspRh8BWsCSe8CY3kD
	 Nd5ay8mKEpfbNUSxd5TNX/e0hjXgaDriBjsK43pMSvFAP41a2lIq56tl86MUc7jb4V
	 aHU0bwh6bmd8ypw0DTrQEJr4rVHF3OKArQgdsBYomP+ClTMEMzVccftX7ebKTCj+ed
	 bo3mwk9EF2VKy9B6SOGrZK2STagS5MIuKdc44kWr/EC2J6igB+okBUyMoOimB47zmv
	 1z0l3abm/ERDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BAC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732239357.8923.7103679322371970469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6120c46450667679ff7e41aa59d989e8779e34553e35edce56797534a75a0d05
Date: Thu, 15 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747322393
