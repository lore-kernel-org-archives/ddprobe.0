Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA3E1E0E14
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781751394; cv=none; b=Gfu57neIo1jRNNUi1AvyoJI3ArM2QftIh1BVVOAHL5OK/sOl6QaCI8MVnI4snSOHkekFvsid816TZyvmRe4yiPNMnLX1TkTeIJaN1ZFu8D2GuJsN80WkWVwmGjv8lqbc0xrhS6megR4fSrVQw+2yOmyBOp+DJE10J36k6dG0fes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781751394; c=relaxed/simple;
	bh=4FlFNGR3Q8JtTpu7LOYNuw6pkhJ7+8QdAYw0erx4zAA=;
	h=To:Subject:From:Message-Id:Date; b=FV74u7wwx+1Ko1UQRaa2lIDdMnwAsEFjjnbk7bhKIGxqo4R58UugwQf5FZg2oXB8Ff9fgQYDmg4Spn2RhzitdX4Uf0YxirWmqDrszRj1uiIIQn0fEk4Bw8c8B4JnKvy+zUKBs8NQ7IV3IVxZzTAovtzDvpPbqpnNiUMgXPwblD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFc6qa6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFc6qa6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7D9C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781751393;
	bh=4FlFNGR3Q8JtTpu7LOYNuw6pkhJ7+8QdAYw0erx4zAA=;
	h=To:Subject:From:Date:From;
	b=PFc6qa6RAyDJpFKA4k3olyKtWIjOdq/E7q3aEBigJdc2iBsJz5EyxXJ1AClJcwX3p
	 6eurCYIkxJhUj5bSS8fKZ3n8p9P5nGyzGjIEmbs46U+iCMxDlpWKR5qxb9h41ryVCP
	 uL1nNyxCc0ZKo8WhWwMuAFGjyoH+nm0OCuV9fiMd7AkNdJkMrJBh5QEAyJL5mYQPHW
	 iHO+tP5Gor01AxKQm0KB051RhNEyH4XqxJ8s/+fYum4f4iyIX+eMl5Zv+qFnLOM2f9
	 /vBpDuPRBW4X8ED1dWQW/iSfbvdleJC+sN8optkr15em0f0iuB3YpkcM+3ARdkiwQS
	 H9k2ZIXasIg3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDB4CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 02:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175139371.2844.8565744625614324486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194289ff3572c5bcf14f22e24ac1154b90e224c5b34548884af31853491a4ec4
Date: Thu, 18 Jun 2026 02:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781751393
