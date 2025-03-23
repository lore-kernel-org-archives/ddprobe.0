Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6600190472
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742752793; cv=none; b=ZrDSo9XyJ99ZGnXBo9REgMSfJMwlps+9hDtD+Ssdh6Op/0mPHUUKAWjZtmNKI0pTwhTMQGMbQ2GHCDE0eBSXKtK4lxSvLYHdvTVEJLHyInd+3wkXAtvhNdbe5pOnsLOAXtzWyrcBtr52JKip8R9iKmxQxd67MaoYIJTsrTog5VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742752793; c=relaxed/simple;
	bh=7GMICZvuzdDFrZkU/CtbYG4ObW1K7Z30IfWd7Q126l0=;
	h=To:Subject:From:Message-Id:Date; b=CMvtGtXkTs4x08Nyr4DO8WJ+RJZCj9Wa9nfb45rbLkA0R1q6+EgRUc7Mx5bwjZsY1bBTR4sGh2vz1QgmpBfaMaCo7Rn2UF0JZK5ukdh3PTPt6xn+DP6UOS8noSJXKtTYT3TqxBjtwZ4dh3hxH4VpYRF6ucQR8mRsOZcRL7rknEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aohuWWXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aohuWWXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FD0C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742752793;
	bh=7GMICZvuzdDFrZkU/CtbYG4ObW1K7Z30IfWd7Q126l0=;
	h=To:Subject:From:Date:From;
	b=aohuWWXbeDGPXbsDnLTAD5bn5CsCMDnk57CO3O7cFttKtEdsmikHOmyRq4VEYmNSN
	 +TXBs8qHieLMRGL5HpJTs+ok+CcUwpK8lD8iw1NciN1kutx1FNcswdGCL2y9i9ZTj5
	 zNmBvhu+uOyF8sP+jcFZe4GGTnsqCf94JA8lP4KWNO5+ylUGA87GqPO4xI2sBDk4Kj
	 jJen39eRJTqy3c3SxddsmLBVzC3mq6lS2u+odnZb7eUvlS1ahV9CnT+zXV+bDzzcOX
	 xdKopKbclf77jnYy/cp/05nO43q/6hUz5qMdncq+HOIw+AuBmpexoQP7U14seEt0dV
	 DCTFkG5wPMY7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7F7C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174275279359.20196.18317641267244889392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541a33055cd854bfbbfe2dc8294548f7b13048da049ea59875e30eda952971f6
Date: Sun, 23 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742752793
