Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAC9299A81
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766430833; cv=none; b=Hfk4NHAY5GlZ4QH7tXNT1iNzqoCr54bIz39kbrzwQneQm8Oxuuy0vqOJPPMq7DU+SncDxveVav7g/uUQzv/A2SeZGU+tOSmnYRYzrBXepefyglLD/P4fcZT+JaOWwaoUP2b6ndYyvo0aKfVBxzbrqwuceKrxIgkzCdKVMlbJzb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766430833; c=relaxed/simple;
	bh=eQE/joZdooM3mQsOTafy+P+ds1Re5p4LB5BCyxqQT4M=;
	h=To:Subject:From:Message-Id:Date; b=tdf8JugeMlDxOtQqVf+HZ8MA3y2xYbWqKVSjRuudkq9ADMWOV8xPj1LVzV+KTUleeZkBhuqkeYUutzOpO2niaErFSpsFeVg54QIFZPbnX3u7tbqgcabv+GQpwmkjDHv8CK73QG5kqrW/QmWxGXxgQQv4n7BFRRAeLOjmmFVQVvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgUHsV2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgUHsV2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37AEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766430833;
	bh=eQE/joZdooM3mQsOTafy+P+ds1Re5p4LB5BCyxqQT4M=;
	h=To:Subject:From:Date:From;
	b=BgUHsV2m+MdzPhMtl/UbCGCimPUp0OXvdAT8jkBwD9LG8Br6Ne7HTcIkM7dsE9kBb
	 OCRk+fMU0dov+cOTTCUd9HxFT7PtXaUPC8r0XPxT1QN6OzExdDft16Sw2JQ9BGnL59
	 tiX/3BubqbLcNnDN82IVqAZ3LxhY+RaVEVuGTyvnNSfpGWPyty8pMWrxWPlJ18vRu6
	 6/PArPuEW6E2E4+VJH3lfzzvs/eLY9ieIgeXv5Q6f55cQBnFqYpuQ/sjWZftn7GXha
	 dDp1Dx5w+IbP3rwfG9hZdh5PqY0d7+LlpYC6s40UdKvRQAbfsSNQW9CODBN1DND3Yr
	 Ik4kQgcGTtLfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926D5E67810
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643083357.23325.4931504103042710495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac24a2df1e766ea9465b773ff570266720ca0aed08af011d9b60803e29e91ed
Date: Mon, 22 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766430833
