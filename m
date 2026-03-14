Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B6C288C39
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773454494; cv=none; b=UUc7ngieKSbWwqBRjhxuZpMYx4L16H556gubJ01ngsZ1oOWvtShbciNdAGxpCSXDTF5yruFbEJ4zzmF8HSSIAtBAkGjQm+sFEbs9AeNc3Tk+9LofJlTaPgV/VWGsZVFH78F3YGO3ZnkoqBsTUhpMNrDXIwxSsFf6AwVxN7KhuSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773454494; c=relaxed/simple;
	bh=MBYYsuwVZvPwF2iDrL3fgoeBnkhAZIwkGOz/WSJvqNs=;
	h=To:Subject:From:Message-Id:Date; b=e4t+g6kmk9Ql/H4Klz8gOg+4XDwHkKNZvMDwGI4uC12cEPM5Mdlajw3ZFOkwTT8CPjJLkQ01L4Ay1jhePzBzn3Rhf6OtsjUc5g1Y+9JDqAXOzNJHKHLmf3o5hkrF1q5bqkwZ9w4SAdicm/4gm+pLdYglGFnAOm6okf20QOmIw/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ka32H7SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ka32H7SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D2AC19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773454493;
	bh=MBYYsuwVZvPwF2iDrL3fgoeBnkhAZIwkGOz/WSJvqNs=;
	h=To:Subject:From:Date:From;
	b=Ka32H7SMjgNLuXe0XVvV5xTKVd2Bg5drfOkIeRKd7LSSEnwRefZUaek2ynWbY0eGT
	 UJOb9CyYgTDnIRFd16Q2e5wEfE5kBP+q3HJE0gJxzG0KjamhtpJYuIQxdAVwXwPgVm
	 mNQ0yRWz1jh2QZQYr1w6TXUIrjjur9FutA9WjW1lb0e8z0uBDDTwGuOvgD2LuuRaOO
	 jz1P4nwxGn1zYsWf0FFBNZ0rrztZySGLqXG7CfuFSy9CjlPoR+yja2ktc/2MBNvVCr
	 sepSS4AIU8B7jace0zpynU2WmrZcF5kx9y2ZErFioHfjXEgtzJFMzcnV+zL419NJaI
	 SSU1sqTjDMmLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A09107BCEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345449358.13686.17712957870075769461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36515083750567357f9a236d093911b5740ddeeb7b0712562b337fe679cc45c1
Date: Sat, 14 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773454493
