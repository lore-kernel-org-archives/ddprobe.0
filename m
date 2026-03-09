Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8131F7569
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773031494; cv=none; b=DsZSIjQDv/6BPoSjryysj7ZMmQtiRixIKbH+G9ze7Ir/xRYEr40IOFyKKhX2hFKlkB7BngjV1Sj9f/TJSDTwaHpcJkrK5uD++SSK+juE7RWTYDhKkpLj7fFiOICrEEvr8ILVxkP7qcXI7W/NNInolS6PIRfRb3V0EvE/YyEzXP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773031494; c=relaxed/simple;
	bh=XcVdriaDyo3HYgsKwqgNpigMPFRnNfAHH93RR2eUOpM=;
	h=To:Subject:From:Message-Id:Date; b=nOTRL0zN9m/MzNm2yo61Qg+i/hfAzwTdQl2r3WtlVpZeNq9qsANgZCthqWxRSXs0LTK/H2HBYBmrWSOV10inahnY7ux+M+EcalzfU5wRM5WzNEViMlJaNJo64sYxhsm5WSRXBsxoYKfN9otlRYPnQeqfyj9YGCJFC503Oy8ieUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0QdJmzi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0QdJmzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A661EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773031493;
	bh=XcVdriaDyo3HYgsKwqgNpigMPFRnNfAHH93RR2eUOpM=;
	h=To:Subject:From:Date:From;
	b=Z0QdJmzimFiIogbXiYCjxjljt3Fz0ij60PvuY9HYIP+VRXTrl9DUyY0PkSLXl2RpY
	 aIxnP5KC8ie02VskQ178RVeZ4DUO3umZyjhlo54cDwTwx3pVMaCyBfVacMWW9TwVYd
	 Yv55laO77n3NuLmLw0l8AgiAc6S1aWfvrOrCWU7P1Mhx6LaY0UNuisC4R+ni5y+c9B
	 B+eJYCf9k7KRMtEFEEKs9efaMjlaJZP5LUp0vvAjhWdwR0JU6qxf8/tmw3flF8bR4C
	 GKZvjHA/3laPKquW4mGgTwj8fDrSCGDPwN8/1RTCaQ26EA+4llnN3Z28bKXbuTbhgc
	 BqruRGXvUbrPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92533EA8554
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303149357.12086.1716961964186651084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856789bbb1435ab8cbfb441b0f942160575415dc825e44dca1368d7afb98bae3
Date: Mon, 09 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773031493
