Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBBC327C0F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767183834; cv=none; b=TwJUJw7/k8eJYDAJ0RBHuXA3FJFS2xTjC4O5F2k6BxAC1XG2Iyq11ZhbRb+NHd8sEqk5ZYS6rZ08t+RUr/wrP47HK6nUpoQa7FjeKmGSryk+ZvOwMhLH7YNjR08Wm7IDGHWcW4YnMxIuQVCAwmjkPlyjaOU/RVKPhuDfe+vHn4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767183834; c=relaxed/simple;
	bh=OiBj6Oy+DIIPvMB8t8bCO2Iw4juNgApzHsjf9muR5eQ=;
	h=To:Subject:From:Message-Id:Date; b=BXPsQh4NIQGOik2fxYUVrPDFOdYi6YNHnwSbbr3FBW1Oh4TufusJA7dOp+1jRHHI2pMQEMlaXcJFAgEiZvOFoFjmhS6cBadrQBZzt4wApJUdme0hs99lzRiUQbBZ7O4J4s0P4Hk7wqj3Qu3m2Ali7P/G8bkq7jJ+ShMV1BR7fqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nde0YuyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nde0YuyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02DBC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767183833;
	bh=OiBj6Oy+DIIPvMB8t8bCO2Iw4juNgApzHsjf9muR5eQ=;
	h=To:Subject:From:Date:From;
	b=Nde0YuyUpc4m0naEvl7tfAuAFP6JQZY6R2qMGLXNXlbQswWpwKIUrsxtO58RhDqV4
	 Qk6vGoDLanyIDyEplu99U6zCa/+D0575+gICsZKJo72vjWwvn3ZVlpqmQNOHeeLRZH
	 Lfi5Eh3SInpODGSKUAkVV36FIWxOtAnPdtTDdPBQ9LdwuD84hupMw563oUoAXfl0HH
	 0yA8ezDT34bbobqyuKYCJeacH3CDuTlMOwO3VcgEXzJ9KRhugAixy0Da7VSOvXorPp
	 wWLpaAWbS0fdPkoyUQ5Vd+9j+vXR0D9Y62tDJR8+pfIq+KKPAhNG4JbsUNY5O5Hk0d
	 z8m4HhAUAQJzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB70EE642F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718383358.14703.4580106950489334789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68837aebe16db21f0169edc5bd8338f4f686a6ac081bef7878d0c10f972c166e
Date: Wed, 31 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767183833
