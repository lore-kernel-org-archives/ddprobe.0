Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B60A1C173F
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747988394; cv=none; b=h88H7ByS74gFKNRVeep5R/1FdJTsB52M+soZAIlLMRwB4oAvu4GLCArLO5uyUGLa0OFkRS8oU5ztk6mxlhNSQ8ZIlyxGpRMVCYufoTD/bqt7Mk+ntre/CtUiOk3u4wKFWqS9uBL/oyBaW9I7HZfbr9Qo9LIi2MKPqvkosdLFIKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747988394; c=relaxed/simple;
	bh=Om6lAnSn6Nu8zyrvbztJ5QoErhbKlVEkVKOMFYTjXTQ=;
	h=To:Subject:From:Message-Id:Date; b=GwQxcRGtD5L+xJqzwO7MlY/BdiCopxZ+Xjh6MLBdyzvIcM0IoQdQWF9zrxQaK8Ok4UjJbnOF5kT1x5YVhYsaUeGWVWgsGSbeipSpmEWkK1AU+Uoj5vGSfPpf6amcIEkjMRJozi7zdp0gdCtaE9Mkaccq3PC9EHsImCQUmYxQnvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4ASwYzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4ASwYzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41D5C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747988393;
	bh=Om6lAnSn6Nu8zyrvbztJ5QoErhbKlVEkVKOMFYTjXTQ=;
	h=To:Subject:From:Date:From;
	b=Y4ASwYzIqxd0TMzsKZPu/s/eXDhfn9l15CchAZa1VUaW4rqmI2RAtBHSDi516zfWu
	 TiMSCEDKC6pm5d5eXI1RyuaRTcBzcBuLVw7pNTPdprC233BZBsZdVh/gX8n0mH3eVg
	 TeK1DH5JbV4egu2dfBafalT7wxaUiV8f/JkcbeXHDGNBo+PzTeSyVrSPUw8R6RMQu7
	 VWTdEGXBUFnaUeJbf6s7JjE4YhN9RYIKfgFd2a6e6tneUVO8CSYQaMcFHW3vjgp7Zw
	 HOVnU3eub816/wK7O7c03EVTOQwpkeIn5aug4DpfEiWl2j54OtVGz2tAisAdbij+TU
	 4tc3ACxhdLhmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9AC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174798839358.9291.516306762643184825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fe9dc2e7a41004eea274aa018a9507721760bd0afed03684618c650d7c6fc1d
Date: Fri, 23 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747988393
