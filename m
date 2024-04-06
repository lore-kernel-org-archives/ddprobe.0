Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF33D487A5
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712436497; cv=none; b=Y0SgB9xkv+l7zpEaLX03LUgWnUnvvniOJUj+WRiPlxDScJWf8wFzS2zv3TwnHBcEDCFzbcrj/hmLbS3V+fb9XKRIjs7ZfQSNwfXRAeXR56w1o1O5MCwtoIAjmRtNSlZv3JwuPVonfX+DFATZ/e8NVNGXt5R74nAZnylcC4oDw7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712436497; c=relaxed/simple;
	bh=8p2PeXV6yKLlHaRHpgIs13mGNS7Kc94dUto4SePl25U=;
	h=To:Subject:From:Message-Id:Date; b=I/LAsVDIld5nBNyqpUP0v/S4Pm7qV2bX3MrZJjqHGPm3jBOhl7IxWjahkjeUzmQYgq4/A4gARHGmgSCYlbUeHoJI0ID1trPtylmApjAOS6cWlkpOxQ73OCuDcgYOx+uJKqAKrMTG3enKfvHji0zOjIoUv+yqEa64EwXKxbeyrMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUX/e0pG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUX/e0pG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAACC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712436496;
	bh=8p2PeXV6yKLlHaRHpgIs13mGNS7Kc94dUto4SePl25U=;
	h=To:Subject:From:Date:From;
	b=GUX/e0pGPBUYUNH3Q5Vr/KDIiQwtErCJauRgK0CwsCDUWQbTs39c9zO0/+melAF83
	 I084xsvLHhEUeQ+/U0ATYbNvHrHWQDNArDiQStQDx7M6pGYxkyVo3MBbGU06k8vGQG
	 YxU6/+2+L3cXvCmnuDkRyIDoRjMQfqGQy/hWU0T3IvMiOjoqVN5tis9lIv5PyhqEA/
	 XB7XjXHnrcIlGLy4NiyKBa83QjR9galeVP5B85T1Kf5c7YgvFYhVsB6vhzxf3e6ydo
	 bhgre5RnyelisWEAFcApF6tTtd8QllT0L6HjTpEBelLS1WfZBgKG9LLJLTh8eG6KC/
	 c+bvq1/FQlolQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB51C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171243649636.9675.6645710010632040473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819cfe450c600220ba4c54a9ea8817cad1279d00dac202c51ea66ded76bf11c5
Date: Sat, 06 Apr 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712436496
