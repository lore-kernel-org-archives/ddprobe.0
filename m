Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DDB14BF92
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771851894; cv=none; b=FMQIoioDnR5ZU+AK3WMmQrtxlwCbtRm3MWKBYfRzn8DyiXq+e3gRaKsG9ESTcH5EEX0+5FwoEPZpetqcsgP4mIGvXrLVpyti1vRFwwWoaD15i2NWuX+xxopj5dDheOPklNBcEO2jC+mec8qWxcIKuQlNbjY6WFCVpk7frG5M2CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771851894; c=relaxed/simple;
	bh=+injGWVFnvIKHC/pB3XIoCeZ9kVGMYUAbPC0o7Fz7V8=;
	h=To:Subject:From:Message-Id:Date; b=TzK7SIrsTvUXf7FL9mwTZwHe89VdCwmev0jJcoy1VX67MXramowkSESayzlUU7KRL12ZzIsTRd/LTFt4KZLWy2Je8GPAzC3HL5aI08I7Wdfjidvu4CDYgJ6DQln7WR6ORzUOWRSC0Gtge1cW/p/5jnzR3/FDGYPUEJ9tQj9ObRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAcyBJgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAcyBJgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8417C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771851893;
	bh=+injGWVFnvIKHC/pB3XIoCeZ9kVGMYUAbPC0o7Fz7V8=;
	h=To:Subject:From:Date:From;
	b=vAcyBJgpc1M1Y8upKf9Ci3K64aysjeIUxawcJtGG1bvHF9PZ/sn2sroU0+e0FyS98
	 uAw5dUcmd/ZXk8lK8450Iq3Jxe9oaKBlPl7BnLAnhOSF+AYMSP63NLV3btbGE4J5U2
	 EmRneHtT13Xj0qUma6Q/MjGWeCLis7h8OWM4IQq/2jKKOiE7sLk7ICFHavZTNL/Cs5
	 C9V8xnE1h3kU/xcGjRwDu6RO/cvMJiyEwLimbC4qLT7n2djK/e6+vfEe/FQnlS9G1a
	 awlLkKfvDPV3iUNfjfJbRxCUSDfubjoliUDJzcykKHc8GX5zZnDK3/7WaIQQE6W3jG
	 czn980Ujt4njA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949B1EA4FBA
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185189359.9428.6981151168349214087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df10e8d047c446c26518aa2e3990a344025c911dc444ab5fcd15108cf706d999
Date: Mon, 23 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771851893
