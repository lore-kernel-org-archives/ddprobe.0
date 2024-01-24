Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65BB811E4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706129897; cv=none; b=lWf49w4oeLamHf84gFHm/pcw3YzpBq0O3gG5wWXjUZk/DviIIftK/Q0tCdW3gNc5+MBF7f3L9W2LVVQ9Bqj8VNl6Epk5Yq169UbevF8wFIaiDktfhyWkYZMnmhM+zkEm1k/OHjeFSwEiTofTVlz1V/EjYSDHBgX54S8wLxjwLgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706129897; c=relaxed/simple;
	bh=CtSkbzbbMcqWx00b5zRJVmXOmIzVidhsZz2SRswTEAk=;
	h=To:Subject:From:Message-Id:Date; b=nWc5ebKUqic7Lbvjbgc90fSjPEQebN0voRLmmBqQ2HjgPuIlRU0noZ2xx+OWo3PEo9aP7zCTjXNEnOt3H6QhzBaJt3RFd6eJUY4gLelw/KXMXUhnR6VEX6kHi/nTlrCa1OpBbXQDXDAZoe5ZGpc43XP/SISwzlWHysjyFk9IZKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piN8XHVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piN8XHVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EABC433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706129896;
	bh=CtSkbzbbMcqWx00b5zRJVmXOmIzVidhsZz2SRswTEAk=;
	h=To:Subject:From:Date:From;
	b=piN8XHVHI7HmqiVRJ4qZDdGotlHe8j69dKHQaPqmM0WRls5XRzhNqPMo7b4uR5ydy
	 yUvoSnV+kXJXBYryZyaWJFaRfi4DIvm0M1zCdA7lIXP5Vjw4TNM8KYWFpS2T4Pkynw
	 JCxEJQmAEGI9kPiADo8tZpEwhyuNGqFe051wgYblfkTbuNyjwzncZgoPRmkWb2nO8T
	 ffopjCQek/fUNsik+9I28Ecf8owRf9lTiy0mXt3m+kldgeNphyPdpHuYpM7/R9cZ1z
	 OhZ5P+ZLotsP3/dxvxlKdvIS25h5RRJOx7qdkBY3fd3CknAB0AfKtPAlWfNvgQqMQz
	 bFn/bGCnxKJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E610C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170612989637.26778.17809774891003503313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668f5e68663f241a956d59ce2bc426ae74eb2fc7df79e5b856c958030b15815b
Date: Wed, 24 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706129896
