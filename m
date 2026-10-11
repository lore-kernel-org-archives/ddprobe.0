Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852E8449988
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791721834; cv=none; b=eVFvRIYYC6kEGo5X2ntUJsuhISyjjCZ3k+z3n+CUHYoZ32fxic0HF4SsBh/RZA1RHR4bd2p/hA0XETZ9JKXATbvJ+QJFg9Z+b1+ny+Rebrz/eYzBnSN5ht8bJr1E1b2o98gEbkQhoOnMWpFNR1mkF9gPLMFz+1HFu5tJaPCQ2b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791721834; c=relaxed/simple;
	bh=tBYuPqxigv25s7esG+uN53Ogx47TegLG1wO17OJ/+20=;
	h=To:Subject:From:Message-Id:Date; b=Jh6nIcWcmG2bzxTtjRrOrqsImlthj9Q/UXijq4OUCDAvFsilD472kwlfgNRPSUwlHIpuUdKO6kb/5AtUKNagh5HTzlPBFb/hLiOx6X8+qHZMnBRNMb0urgx0ClrVxlewtY6bAS8gzt2+hRBOP2L2j0uKpwRFihO7IZ2e779yKy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZ2vn+wL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZ2vn+wL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DCEC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791721833;
	bh=tBYuPqxigv25s7esG+uN53Ogx47TegLG1wO17OJ/+20=;
	h=To:Subject:From:Date:From;
	b=cZ2vn+wLlKEFqiI9S8Iaw+GHHBEcPUaLYJ3f95MQwbHMosKtdqSb7WYA6P/x4GTxw
	 hqf3+3uYkMHRVBkOM4b3HB5+RpYZgwJwT4ZLEzCHImxoTUh5AfNnBMwjjnFziPQGHx
	 m1L+pMs00bEEPT9Pluz5+Rz3SUa1WWgvNUBVqHQAk/MfOZqx3vyH1IJwiO9bFUu06C
	 S2suYtW/2o+RPdT8ktPZnxWI0DRByMRNNPM37dyD67X3Y2ZuOOvPUdIkrhapOf9p+e
	 p5XmLouWBHNPv7Ln6O0IE8BMrbOjHzOFO7T1VUQS1TLi2J8w1z8zYH6ku//gA7wWE5
	 N3kG690pfnu+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B016CCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172183368.26959.5869265710387896264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa4df16d24d656bf9a9229f5280bfb9c6c6e50f04135f4845f79a6b1dcdf941
Date: Sun, 11 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791721833
