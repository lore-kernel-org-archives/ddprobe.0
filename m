Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2455029BDB1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760696994; cv=none; b=H3s23LYPwrtL+v9SF7XxwKFnX+nGbCE2H2uygaQZuRPBwtpyLGzi3sBzejiNRjCQNGTZtFDD99SablRIvEb1w18kbfCDvpoFHtZEBD39JDaSveQ+0af2dnlfGGduHGu0hQujXkCpIvRYh3kuSu/cRDXqEfxcKRq7ua3l4OTZFQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760696994; c=relaxed/simple;
	bh=/93QBFpJ8TPvy8HqQO9aFs6tnQN2yyR6bUnLK2f6F1E=;
	h=To:Subject:From:Message-Id:Date; b=i3jCD4uzWTITkcjRKL7cwz4T+zXaGONUWBexBvSosiW8q0sTtfC8thFjt1k8MQQDg/m1If0dksKVa+aW/7kpCt4+NKp5KceW6W3BfEQzSfFIDSQ/CZRnwLPLc4otggjDOdDS+AaMWxGDGD8BhgN963jh55snzTqsSOtztB6Nepk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nD0JnJrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nD0JnJrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7B4C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760696993;
	bh=/93QBFpJ8TPvy8HqQO9aFs6tnQN2yyR6bUnLK2f6F1E=;
	h=To:Subject:From:Date:From;
	b=nD0JnJrcq+H8CrhQUhUNNX/QYS38nPldHAuu3UvjXGd54BHSe9oiBWB1BNErMdZdp
	 1fa/BRwGfdDBc0UTEFg0YhUNkXdpwENs+Qd5hYaS9Kr58Aqc2sc7E91BXeQfJPenGf
	 V+6j3hyGYwmX9vHn89T9j24V9hcFunyihaX7lQgaB+vVBOV96clNkE5RKjwLVYlMJm
	 9iAea/zVzovY4SaABRkW9UPxqn2E3+IICXpmWo7Q2eCK78nmwYQAcmPNJ+sMGL099K
	 iKUK3csk3q/GxxL1ltNLk9FKZnbR/3DntQiLHzH0rm5TofE1k7aQZ4cOWdumvqlhDs
	 dFZHqty9wh2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA4CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069699357.22113.2385340989738448671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b72d48236d907820eff02cdfbe02be842897d6512a95b7f7238704ff21027c
Date: Fri, 17 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760696993
