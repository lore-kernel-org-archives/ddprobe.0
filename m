Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564012F2D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748921396; cv=none; b=UtefAw1MGUXFQyjJ8wfKw1y/uCzFL9PXQ9+aPN3TD+lts2IxK1XQaPbUYfGD9Ee0lCWgRmVoqzs+zdEaq5Ig997qmtpL3oa4xIsuFxhevtGk/5SU18PW5dN9s46YwJiImiYNj6uHcAJXybuevXFJMoEnDIfjdxu5t5em3XUnhDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748921396; c=relaxed/simple;
	bh=U9pHlPDh2CIvMvXO7UliflQLEaBO3EABSSCcnipHBqo=;
	h=To:Subject:From:Message-Id:Date; b=A0765az7g4RW5zI87N7OSzyd6u2ZPGHyUULHqxT2dglyHMBCmi80uS0AimtKAOQJF5wFg+swirfhMKUEOayWI2ecYWJLAd0Z6r+2eeiVYnFvPn7jLPBPF4RnBjX1LZVrdlAry335Qd+85dujQCrOEePnXgHoqRRtf4NM8gW/uuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9UtcXU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9UtcXU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87B6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748921393;
	bh=U9pHlPDh2CIvMvXO7UliflQLEaBO3EABSSCcnipHBqo=;
	h=To:Subject:From:Date:From;
	b=q9UtcXU3YWoqR2R4xoQ1FqFibhRqZagwdP8+QyrVgRRmMNJRgO3DpuMcE2Rt6rtdJ
	 XxEf0eGVHfJksyobckCUKbH3biaRC2H/5uCWTLke3pX6jFULr/z6iPeBlqAw4dpVXP
	 aXopr+VOtF7MIooXiBYJpAxJiMmDFgdox30FGJQr1xgEz8mFySgHw/72YErMXa0DEC
	 kh+/YhqeC+kYYYD/Th/0SjBtUope4C/+P+xUPzrGGCBjiaGd2GQZCF/sg0Z5Afuprd
	 0vHQ7qp5+eBDH2DVXLTPM9NhoZWmrZA4mDTqysWa+r3c5X6OjaUoGwuzsrYntUsine
	 Na9LneSoZX70w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F8BC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892139357.13079.510410534390209918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce0b7c3a1839699642182c853d9ec0fb1a2c5ac40ac05ef60c5ec2e542557ef
Date: Tue, 03 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748921393
