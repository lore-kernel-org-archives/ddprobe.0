Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C051E0DDC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737387953; cv=none; b=PnVRvSGgZqGggTCbZfNBPtLwet9GcQljmXyG+Sb4W1rVoE1OYi+dQIswZs25aNyGID3sXJJcIit2S1QW2VpGC0rOOmedlZTX6ML8i7sJ3Ay/EKH7vOB5hjj3bMAv8C5qbAJlGEmtDgk+ZudQ5PqTSxbldYrQGAp2J/TMXEaxyfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737387953; c=relaxed/simple;
	bh=sM4K3e7fFTyTLKsAMCdmCsOlI76L81xw3658e6e6TUA=;
	h=To:Subject:From:Message-Id:Date; b=Dj6W8YiEUpfhFZ6ffdYlBCmdP+N3s1yHtChdUXQmTFQXkwWOXTLsYG0AzjFEU/1MUteMrZUlzyax3GxhgyA2wk0WDM5mNxptaBnxPytcXwE33cqivkEjE8xrlGfy+0ux8FwSTHYm2v8HTnMbI3e/O/Q7t5VXynWEu+1RSHjnhtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6STP+co; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6STP+co"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737387953;
	bh=sM4K3e7fFTyTLKsAMCdmCsOlI76L81xw3658e6e6TUA=;
	h=To:Subject:From:Date:From;
	b=K6STP+col6n6Xw2GWyCpRmDXruAnNdWU7c2A6DwW+EpsPk9bjE4ozTDpcilCXJ8fn
	 NNB1I0RWbl3AREYI6aiN5ENhC1B+9RBV9wzMg4Dq35/rho/lilHK+KRgJ4YsntYso4
	 zd4TNlYY/3znZa7raPQMATRCgNY9V0cIclqk4eSATA02OGkbM4oAjfUIFNMJ8zKEfp
	 Q6RcZ9nZ9rIT0ECfmTh74LNbmWceYYvBQRi447qyoxFjgHLUhOF7q1gqbghVN7XmRN
	 O6Mh25kdc1Vt0phUK5ElvpSGLkewZ667J6O9o/Ea0IGKOTv3bWVOwJEr7YSyE86BDz
	 eWmk6vQH0zdnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED5C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173738795359.28717.14636957150066986845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b981710f1e4faaaed60983926db97d5443d8c7db80e885c527f2d1cffc008485
Date: Mon, 20 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737387953
