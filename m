Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DDB1E489
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756557594; cv=none; b=Is2L1B+ketVLUEG7ObM9e8KxAC9n6FD3ACzlm0vwzou0+059LVaOxhHnBx3Z5TYyHHhRFvVVOlWIZJsf01i8v99wwL+3b2Txo4GkltZjsMNAecq1ihjdkRJHRtsgc3PLcyV4XAJKksktH9L1uWdtYgbQ87P4LUgeKk4yQKUdKYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756557594; c=relaxed/simple;
	bh=9BI8A+F1Gzk6S9zYCL8HY4KchiKCoFyXrvSCT1DPXqU=;
	h=To:Subject:From:Message-Id:Date; b=D6FW3CjMxeUXOxI4IRHIZ3VbRxVo6dPRWIpZlWhyoQ9rP+AIpT5CdJ8BxdB2pGNmEr/wUUdHStw+ultTY4QM6eov1k5uH8nz4wfknKOcTkwncwdhlCMZLovKKG4wKIALuTaqaur1fxPhTTfef6FHOms56neumT/GVGNgThPbji8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XO9XQdg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XO9XQdg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20AFC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756557593;
	bh=9BI8A+F1Gzk6S9zYCL8HY4KchiKCoFyXrvSCT1DPXqU=;
	h=To:Subject:From:Date:From;
	b=XO9XQdg0lgpdCTo2XTn7AjaCqBRl1M850/rAgVZqt5nBWUVQHuW2hdPFVmfF4LNZr
	 ULJb7pY3hg9BkJqe3VyHDJKKkzSWpppcMyYl5ZlBhMNZTt3/XrgKNhH4QAV0m65eXr
	 sC8ektuhWF+fKwOtvkvP1agOtdNGW+eeknvtkbgvclu96drcee7DOi1oiajbB3+6kF
	 ONXXI+NxSnMIwfyY1JnB+paumK+nC6jEBT8xH5WbylgAKA+hqXLgrESqH4MCznkc23
	 6zqcWoUdmyT9VkQ9H+30pgEi0zLfGjiLX41Bn7ufaZqMEJwyd071n+EfPay6o0/AiV
	 po+qIWw0QMo/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED26CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175655759357.25487.11851820197909595614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce892b5872b69012e72cb40e820aea57bde1cc1314692e2eb734f46de654de78
Date: Sat, 30 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756557593
