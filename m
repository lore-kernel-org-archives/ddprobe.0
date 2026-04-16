Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FC51B6D08
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776361654; cv=none; b=G3WZAo9WTqQGxEJSt0zj6jU9/m2SmeFwWq828OJMQimyFxEHPXanWm62u3WYqTBWgQ2wp9+YF1qYvJ2dfZ5RmpQrLOqmD8UGu3hOTjWvs8wZdHf5LctEeVMG2wgbhwklpjbkMXhh2UUGOb/lhYv86CjAiACMt/KQ9dE01eMsLJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776361654; c=relaxed/simple;
	bh=z+Lbpi4Qrp2dLHDuszU6tyPlKP7/3iDMAj3T5oAt25g=;
	h=To:Subject:From:Message-Id:Date; b=L+xUnR96IKB4Iis1ARIiVRS5rIx+KzNNiR/k850W8noAUpAI5GLLN/Dd0/KqrSexBw5wt4GBu8tnmbdF9/wq2wq3IpaRrHnv+JMwCWhjURokvvKsDOyQQZpnBmI1IyiVTZdsUs5eUpuBrmquW/AqUVdZso7VTdjBYqdFVmh1oNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOOt4+EM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOOt4+EM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC7FC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776361653;
	bh=z+Lbpi4Qrp2dLHDuszU6tyPlKP7/3iDMAj3T5oAt25g=;
	h=To:Subject:From:Date:From;
	b=nOOt4+EMBiH9NlGCp/hzFx67XrRwFGPCpwG2VMuCSDJbw+OPwOQcNKrWj0m2wHKnI
	 PNlrIw971pb89Y4XSWNlSGC+prbuFdeiFpokOy1UXicrGYP0IzYsgsrHW0baOPPLOR
	 OSHwunln4wnJkrg4WBcbNECvDtDu9+tG8v7UnjOsyt8UC/RqFYRiOhv+uRapyOP633
	 01wU6z3LEi+r8sG9Xq2nli9HMt8yTiyZ36GqgKZWCAP6NMDuzFXPFf072QnM20tyda
	 37mTbBON23JU2ZonXo1PLR1QjhDCyB+OlFRDnJs5c8iOgsOp/+MgyMu7Qt/iJXMaIt
	 IAMb0NDZxQYcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C6AF8D763
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636165368.2774.312368848032237822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96644616d67b0b5b0bb2e53a15eb4499d09e36c89de506e5422f1bc5445a8b16
Date: Thu, 16 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776361653
