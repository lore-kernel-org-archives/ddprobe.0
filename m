Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140B31FBE83
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737108954; cv=none; b=Nq6JP8HUvwqeX/rmCOGMwI1Tj8WkB0fFxoOrj+mdWqx8IayQ2KznK0A6JlWQPXi5Js7uq0iRj71EvSPtCT82j8cCCoMW7uVby/GJeMGDAYhHf9Cy5mig1KlJlnwx7JjGJCOuSOZukAMRpJDG3wVdGDJtHueyTDI30yxuHk+3Zos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737108954; c=relaxed/simple;
	bh=TPjwfrg0PSAGO7JiabI0y1kgvL7lkuyqjlih6b2j2/4=;
	h=To:Subject:From:Message-Id:Date; b=JLn5DRb/xQ/YOxgjuVHqMjw+xwOtZ8LcYYaAd015dHfHLYDpteyFrYNy2hxPkQG1oX9l+7c/h9EGNsE9ZKJSlAB5qqnNNT/S7RjW2aNTzzpp0c61RBGbRDcXZDuM+ncc/Tm8DolkeR0FLCQiJnw/jvvGALfL0oRxwbNIcXD2ZXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUA9+/h9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUA9+/h9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD8C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737108953;
	bh=TPjwfrg0PSAGO7JiabI0y1kgvL7lkuyqjlih6b2j2/4=;
	h=To:Subject:From:Date:From;
	b=OUA9+/h9Zg3eVwBZaT20FRQSF5sZZ4fSFjmRx76VSmp+iB8rcu0Yt2VokQabXF4ID
	 1kQEQ4P2ueJM/rl6V69QPMl6Pr52L53JIFccf2kUpge6NBL5JeDezZghr63vMe6Nn9
	 iYYC1zvHU7ckN21Ipykp0/OIMYHzjL1fA1MUIGXwHmQ6UHkh71s2lPbQAscQQE8AxP
	 6OrJisGxPXBNX1Yxzqfu4zDmtEL5wBEKuNT/Y+tQZd1BMG1EIMTzpxXZk84AGrkQXD
	 u9fP19zL4ZyYqCkErByU2H2DMaNc3/f5aIL/txjClAAallIaOlo5goDp2Tc00YN0S8
	 JjuD6azad9f8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95455C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710895360.22558.911163822561916891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ed476557d4b280ec8712d507313643752b94b40d0dec067fe797781416a8f9
Date: Fri, 17 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737108953
